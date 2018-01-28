package main;

import Entities.User;
import Services.BootStrapService;
import Services.UserServices;
import freemarker.template.Configuration;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.HashMap;
import java.util.Map;

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

        User user = new User("da", "klk", "ok");
        UserServices.getInstancia().crear(user);
        get("/", (request, response) -> {

            Map<String, Object> attributes = new HashMap<>();
            return new ModelAndView(attributes, "index.ftl");
        }, freeMarkerEngine);
        get("/patient", (request, response) -> {

            Map<String, Object> attributes = new HashMap<>();
            return new ModelAndView(attributes, "patients.ftl");
        }, freeMarkerEngine);
        get("/newPatient", (request, response) -> {

            Map<String, Object> attributes = new HashMap<>();
            return new ModelAndView(attributes, "newPatient.ftl");
        }, freeMarkerEngine);

    }
}
