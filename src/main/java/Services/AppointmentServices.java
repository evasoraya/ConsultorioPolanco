package Services;

import Entities.Appointment;


public class AppointmentServices extends GestionDB<Appointment> {
    private static AppointmentServices instancia;

    private AppointmentServices() {
        super(Appointment.class);
    }

    public static AppointmentServices getInstancia() {
        if (instancia == null) {
            instancia = new AppointmentServices();
        }
        return instancia;
    }
}
