package main;

import Entities.Appointment;
import Entities.Consultation;
import Entities.Patient;
import Entities.User;
import Services.*;
import freemarker.template.Configuration;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.*;

import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;

public class main {

    private static final String SESSION_NAME = "username";
    private static final String COOKIE_NAME = "user_cookie";

    public static void main(String[] args) {
        enableDebugScreen();
        staticFileLocation("/");


        Configuration configuration = new Configuration(Configuration.VERSION_2_3_23);
        configuration.setClassForTemplateLoading(main.class, "/templates");
        FreeMarkerEngine freeMarkerEngine = new FreeMarkerEngine(configuration);

        BootStrapService.getInstancia().init();
        User u = new User();
        u.setUsername("da");
        u.setName("eva");
        u.setLastName("eva");
        u.setEmail("eva@eva.com");
        u.setRole("admin");
        u.setPassword("da");
        UserServices.getInstancia().crear(u);




        get("/", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");


            ArrayList<Appointment> todayList = new ArrayList<>();
            Date d = new Date();
            List<Appointment> list2 = new ArrayList<>();
            List<Appointment> list = AppointmentServices.getInstancia().findAll();


            DateFormat df = new SimpleDateFormat("MM/dd/yyyy");


            for(Appointment a : list){
                if(!a.getStatus() && a.getDate().split("T")[0].split("-")[2].equals(df.format(d).split("/")[1])){
                    list2.add(a);
                }



            }

            Collections.sort(list2,(o1,o2) -> o1.getDate().compareTo(o2.getDate()));


            Map<String, Object> attributes = new HashMap<>();



            attributes.put("patients", list2);
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "index.ftl");
        }, freeMarkerEngine);

        get("/patient", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");


            Map<String, Object> attributes = new HashMap<>();

            System.out.println(PatientServices.getInstancia().findAll().size());
            attributes.put("patientList",PatientServices.getInstancia().findAll());
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "patients.ftl");
        }, freeMarkerEngine);

        get("/newPatient", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");


            Map<String, Object> attributes = new HashMap<>();

            System.out.println(PatientServices.getInstancia().findAll().size());
            attributes.put("patientList",PatientServices.getInstancia().findAll());
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "newPatient.ftl");
        }, freeMarkerEngine);

        get("/newConsultation", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "newConsultation.ftl");
        }, freeMarkerEngine);

        get("/newUser", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "newUSer.ftl");
        }, freeMarkerEngine);

        get("/consultation", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("consultationList", ConsultationServices.getInstancia().findAll());
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "consultation.ftl");
        }, freeMarkerEngine);
        get("user", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");
            Map<String, Object> attributes = new HashMap<>();



            attributes.put("userList", UserServices.getInstancia().findAll());
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "users.ftl");
        }, freeMarkerEngine);

        get("/appointment", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");

            Map<String, Object> attributes = new HashMap<>();
            List<Appointment> list = AppointmentServices.getInstancia().findAll();
            list.sort((o1,o2) -> o1.getDate().compareTo(o2.getDate()));

            attributes.put("appointmentList", list);
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "appointment.ftl");
        }, freeMarkerEngine);

        get("/newAppointment", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("patients", PatientServices.getInstancia().findAll());
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "newAppointment.ftl");
        }, freeMarkerEngine);

        get("/patientProfile/:id", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");
            System.out.println("Aquii"+Long.parseLong(request.params("id").replace(",","")));
            Appointment a = AppointmentServices.getInstancia().find(Long.parseLong(request.params("id").replace(",","")));

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("consultationList", ConsultationServices.getInstancia().findByPatient(a.getPatient().getCode()));

            attributes.put("appointment",a);
            attributes.put("fecha", a.getDate().split("T")[0]);
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "patientProfile.ftl");
        }, freeMarkerEngine);

        get("/patient/:id", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");

            Patient a = PatientServices.getInstancia().find(Long.parseLong(request.params("id")));

            Map<String, Object> attributes = new HashMap<>();

            attributes.put("patient",a);
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "profile.ftl");
        }, freeMarkerEngine);

        get("/consultation/:id", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");
            System.out.println("Aquii"+Long.parseLong(request.params("id")));
            Consultation a = ConsultationServices.getInstancia().find(Long.parseLong(request.params("id")));

            Map<String, Object> attributes = new HashMap<>();

            attributes.put("consulta",a);
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "consultationProfile.ftl");
        }, freeMarkerEngine);

        post("/newPatientPost", ((request, response) -> {


            Patient p = new Patient();
            p.setName(request.queryParams("name"));
            p.setLastName(request.queryParams("lastName"));
            p.setID(request.queryParams("cedula"));
            p.setBirthdate(request.queryParams("birthdate"));
            p.setGender(request.queryParams("gender").charAt(0));

            if(request.queryParams("nacionalidad").equals("1")){
                p.setNationality(request.queryParams("nacionalidad2"));
            }
            else{
                p.setNationality(request.queryParams("nacionalidad"));
            }

            p.setCellphone(request.queryParams("celular"));
            p.setPhoneNumber(request.queryParams("telefono"));
            p.setDirection(request.queryParams("direccion"));
            p.setCity(request.queryParams("ciudad"));
            p.setProvince(request.queryParams("provincia"));
            p.setReference(request.queryParams("quienRefirio"));
            p.setEmergencyName(request.queryParams("emergenciaNombre"));
            p.setEmergencyPhoneNumber(request.queryParams("emergenciaTelefono"));
            if(request.queryParams("planMedico").equals("Privado")){
                p.setPrivatePatient(true);
            }
            else{
                p.setPrivatePatient(false);
            }
            p.setTutor(request.queryParams("encargadoMenor"));
            p.setTutorPhoneNumber(request.queryParams("encargadoTelefono"));
            PatientServices.getInstancia().crear(p);

            response.redirect("/patient");
            return "Registrado!";
        }));

        post("/newUserPost", ((request, response) -> {
            System.out.println("entrooo");
            User user = new User();

            user.setName(request.queryParams("name"));
            user.setLastName(request.queryParams("lastName"));
            user.setEmail(request.queryParams("email"));
            user.setUsername(request.queryParams("username"));
            user.setPassword(request.queryParams("password"));
            user.setRole(request.queryParams("role"));


            UserServices.getInstancia().crear(user);

            response.redirect("/user");
            return "Registrado!";
        }));

        post("/newAppointmentPost", ((request, response) -> {


            Appointment a = new Appointment();


                Patient p = PatientServices.getInstancia().find(Long.parseLong(request.queryParams("codigo")));

                a.setPatient(p);
                a.setInsurance(request.queryParams("seguro"));
                a.setDescription(request.queryParams("description"));

                a.setDate(request.queryParams("date"));
            System.out.println(request.queryParams("date"));


            a.setDescription(request.queryParams("description"));
            a.setDescription(request.queryParams("insurance"));
            a.setDate(request.queryParams("date"));
            a.setStatus(false);

            AppointmentServices.getInstancia().crear(a);


            response.redirect("/newAppointment");
            return "Registrado!";
        }));

        post("/newConsultationPost/:id", ((request, response) -> {

            Consultation consulta = new Consultation();

            consulta.setrazonVisita(request.queryParams("razonVisita"));
            consulta.setInicioSintomas(request.queryParams("inicioSintomas"));
            consulta.setFrecuenciaSintomas(request.queryParams("frecuenciaSintomas"));
            consulta.setCondicion(request.queryParams("condicion"));
            consulta.setLugarDolor(request.queryParams("lugarDolor"));
            consulta.setLoHaceSentirMejor(request.queryParams("sienteMejor"));
            consulta.setFrecuenciaDolor(request.queryParams("frecuenciaDolor"));
            consulta.setActividadesDolor(request.queryParams("actividadesDolor"));
            if(request.queryParams("tratamientoAnteriorSi")!= null && request.queryParams("tratamientoAnteriorSi").equals("on") ){
                consulta.setTratamientoAnterior(true);
            }
            else {
                consulta.setTratamientoAnterior(false);
            }
            consulta.setCualTratamientoAnterior(request.queryParams("tratamientoAnterior"));
            if(request.queryParams("historialFamiliarSi") != null && request.queryParams("historialFamiliarSi").equals("on")){
                consulta.setHistoriaFamiliarMismaCondicion(true);
            }else{
                consulta.setHistoriaFamiliarMismaCondicion(false);
            }
            consulta.setCualFamiliarMismaCondicion(request.queryParams("historialFamiliar"));
            if(request.queryParams("enfermedadesSeriasSi") != null && request.queryParams("enfermedadesSeriasSi").equals("on")){
                consulta.setEnfermedadesSerias(true);
            }
            else {
                consulta.setEnfermedadesSerias(false);
            }
            consulta.setCualEnfermedadSeria(request.queryParams("enfermedadesSerias"));
            if(request.queryParams("hospitalizacionesAntSi") != null && request.queryParams("hospitalizacionesAntSi").equals("on")){
                consulta.setHospitalizacionesAnteriores(true);
            }else{
                consulta.setTratamientoAnterior(false);
            }
            consulta.setCualHospitalizacionesAnteriores(request.queryParams("hospitalizacionesAnt"));
            if(request.queryParams("operacionesAntSi") != null && request.queryParams("operacionesAntSi").equals("on")){
                consulta.setOperacionesAnteriores(true);
            }
            else{
                consulta.setOperacionesAnteriores(false);
            }
            consulta.setCualOperacionesAnteriores(request.queryParams("operacionesAnt"));
            if(request.queryParams("medicamentosSi") != null && request.queryParams("medicamentosSi").equals("on")){
                consulta.setMedicamentos(true);
            }
            else{
                consulta.setMedicamentos(false);
            }
            consulta.setCualMedicamentos(request.queryParams("medicamentos"));
            if(request.queryParams("alergiasSi") != null && request.queryParams("alergiasSi").equals("on")){
                consulta.setAlergias(true);
            }
            else{
                consulta.setAlergias(false);
            }
            consulta.setCualAlergias(request.queryParams("alergias"));
            if(request.queryParams("historialFamCondicionSi") != null && request.queryParams("historialFamCondicionSi").equals("on")){
                consulta.setSihistorialFamiliarMismaCondicionHMP(true);
            }
            else {
                consulta.setSihistorialFamiliarMismaCondicionHMP(false);
            }
            consulta.setHistorialFamiliarMismaCondicionHMP(request.queryParams("historialFamCondicion"));
            consulta.setLugarNacimiento(request.queryParams("lugarNacimiento"));
            consulta.setPesoLbs(Float.parseFloat(request.queryParams("pesoLbs")));
            consulta.setPesoOnz(Float.parseFloat(request.queryParams("pesoOnz")));
            consulta.setEstatura(Float.parseFloat(request.queryParams("estatura")));
            if(request.queryParams("prematuroSi") != null && request.queryParams("prematuroSi").equals("on")){
                consulta.setPrematuro(true);
            }else{
                consulta.setPrematuro(false);
            }
            if(request.queryParams("cesareaSi") != null && request.queryParams("cesareaSi").equals("on")){
                consulta.setCesarea(true);
            }else{
                consulta.setCesarea(false);
            }
            consulta.setCantidadEmbarazos(Integer.parseInt(request.queryParams("noEmbarazos")));
            consulta.setCantidadHijos(Integer.parseInt(request.queryParams("noHijos")));
            consulta.setMesesSeParo(Float.parseFloat(request.queryParams("seParo")));
            consulta.setMesesCamino(Float.parseFloat(request.queryParams("camino")));
            consulta.setMesesHablo(Float.parseFloat(request.queryParams("hablo")));
            if(request.queryParams("fiebreSi")!= null && request.queryParams("fiebreSi").equals("on")){
                consulta.setFiebre(true);
            }else{
                consulta.setFiebre(false);
            }
            consulta.setFiebreDescripcion(request.queryParams("fiebre"));
           if(request.queryParams("pielSi") != null && request.queryParams("pielSi").equals("on")){
               consulta.setPiel(true);
           }else{
               consulta.setPiel(false);
           }
           consulta.setPielDescripcion(request.queryParams("piel"));
           consulta.setDescription(request.queryParams("description"));
           consulta.setPrescription(request.queryParams("tags_1"));
           System.out.println("ellll "+request.params("id"));
           Appointment a = AppointmentServices.getInstancia().find(Long.parseLong(request.params("id")));
           a.setStatus(true);
           AppointmentServices.getInstancia().editar(a);
           consulta.setAppointment(a);
           ConsultationServices.getInstancia().crear(consulta);
            System.out.println("el sizeee "+ConsultationServices.getInstancia().findAll().size());
            response.redirect("/consultation");
            return "Registrado!";
        }));


        get("/login", (req, res) -> new ModelAndView(null, "login.ftl"), freeMarkerEngine);

        post("/login", (req, res) -> {
            String username = req.queryParams("username");

            if(autentificar(username,req.queryParams("password"))){
                res.cookie(COOKIE_NAME, username, 3600);
                User user = UserServices.getInstancia().findByUsername(username);
                req.session().attribute(SESSION_NAME, user);
                res.redirect("/");
            }else{
                res.redirect("/login");
            }
            return null;
        });
        get("/logout",(req,res)->{
            req.session().removeAttribute(SESSION_NAME);
            res.removeCookie(COOKIE_NAME);
            res.redirect("/login");
            return null;
        });

        before("/consultation",((request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ||usuario.getRole().equals("secretaria") )
                response.redirect("/");
        }));
        before("/newConsultation",((request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ||usuario.getRole().equals("secretaria") )
                response.redirect("/");
        }));

        before("/newAppointment",((request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ||usuario.getRole().equals("doctora") )
                response.redirect("/");
        }));

        before("/appointment",((request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ||usuario.getRole().equals("doctora") )
                response.redirect("/");
        }));

    }
    private static boolean autentificar(String username, String password){
        User u = UserServices.getInstancia().findByUsername(username);
        if(u != null && u.getPassword().equals(password)) return true;
        return false;
    }

}
