package main;

import Entities.Appointment;
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
        u.setUsername("eva");
        u.setName("eva");
        u.setLastName("eva");
        u.setEmail("eva@eva.com");
        u.setRole("doctora");
        u.setPassword("eva");
        UserServices.getInstancia().crear(u);




        get("/", (request, response) -> {
            User usuario = request.session().attribute(SESSION_NAME);
            if (usuario == null ) response.redirect("/login");


            ArrayList<Appointment> todayList = new ArrayList<>();
            Date d = new Date();
            List<Appointment> list = AppointmentServices.getInstancia().findAll();

            list.sort((o1,o2) -> o1.getDate().compareTo(o2.getDate()));
            Map<String, Object> attributes = new HashMap<>();



            attributes.put("patients", list);
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

            Patient p = PatientServices.getInstancia().find(Long.parseLong(request.params("id")));

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("consultationList", ConsultationServices.getInstancia().findByPatient(p.getCode()));

            attributes.put("patient",p);
            attributes.put("user",usuario);
            return new ModelAndView(attributes, "patientProfile.ftl");
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


            System.out.println(request.queryParams("date"));
            if(request.queryParams("newP").equals("false")){


                Patient p = PatientServices.getInstancia().find(Long.parseLong(request.queryParams("codigo")));
                a.setPatient(p);
            }
            else{

               a.setName(request.queryParams("nombre"));
                a.setTelefono(request.queryParams("telefono"));
            }

           a.setDescription(request.queryParams("description"));
            a.setDate(request.queryParams("date"));
            AppointmentServices.getInstancia().crear(a);

            System.out.println("laa");
            response.redirect("/newAppointment");
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
