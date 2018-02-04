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

    public static void main(String[] args) {
        enableDebugScreen();
        staticFileLocation("/");


        Configuration configuration = new Configuration(Configuration.VERSION_2_3_23);
        configuration.setClassForTemplateLoading(main.class, "/templates");
        FreeMarkerEngine freeMarkerEngine = new FreeMarkerEngine(configuration);

        BootStrapService.getInstancia().init();


        get("/", (request, response) -> {
            ArrayList<Appointment> todayList = new ArrayList<>();
            Date d = new Date();
            List<Appointment> list = AppointmentServices.getInstancia().findAll();


            list.sort((o1,o2) -> o1.getDate().compareTo(o2.getDate()));



            Map<String, Object> attributes = new HashMap<>();


            attributes.put("patients", list);
            return new ModelAndView(attributes, "index.ftl");
        }, freeMarkerEngine);

        get("/patients", (request, response) -> {

            Map<String, Object> attributes = new HashMap<>();

            System.out.println(PatientServices.getInstancia().findAll().size());
            attributes.put("patientList",PatientServices.getInstancia().findAll());
            return new ModelAndView(attributes, "patients.ftl");
        }, freeMarkerEngine);

        get("/newPatient", (request, response) -> {


            Map<String, Object> attributes = new HashMap<>();

            System.out.println(PatientServices.getInstancia().findAll().size());
            attributes.put("patientList",PatientServices.getInstancia().findAll());
            return new ModelAndView(attributes, "newPatient.ftl");
        }, freeMarkerEngine);

        get("/newConsultation", (request, response) -> {

            Map<String, Object> attributes = new HashMap<>();
            return new ModelAndView(attributes, "newConsultation.ftl");
        }, freeMarkerEngine);

        get("/consultation", (request, response) -> {

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("consultationList", ConsultationServices.getInstancia().findAll());
            return new ModelAndView(attributes, "consultation.ftl");
        }, freeMarkerEngine);

        get("/appointment", (request, response) -> {

            Map<String, Object> attributes = new HashMap<>();
            List<Appointment> list = AppointmentServices.getInstancia().findAll();
            list.sort((o1,o2) -> o1.getDate().compareTo(o2.getDate()));

            attributes.put("appointmentList", list);
            return new ModelAndView(attributes, "appointment.ftl");
        }, freeMarkerEngine);

        get("/newAppointment", (request, response) -> {

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("patients", PatientServices.getInstancia().findAll());
            return new ModelAndView(attributes, "newAppointment.ftl");
        }, freeMarkerEngine);
        get("/patientProfile/:id", (request, response) -> {

            Patient p = PatientServices.getInstancia().find(Long.parseLong(request.params("id")));

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("patient",p);

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

            response.redirect("/patients");
            return "Registrado!";
        }));

        post("/newAppointmentPost", ((request, response) -> {


            Patient p = PatientServices.getInstancia().find(Long.parseLong(request.queryParams("patient")));


            Appointment a = new Appointment();
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            System.out.println(date);
            a.setDate(date);


            a.setPatient(p);
            a.setInsurace(request.queryParams("insurance"));

            AppointmentServices.getInstancia().crear(a);

            response.redirect("/appointment");
            return "Registrado!";
        }));




    }
}
