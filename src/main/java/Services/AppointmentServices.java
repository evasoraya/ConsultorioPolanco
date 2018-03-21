package Services;

import Entities.Appointment;
import Entities.Consultation;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;


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
    public List<Appointment> findByPatient(Long code){
        EntityManager em = getEntityManager();
        Query query = em.createQuery("select a from  Appointment a where a.patient.code like :code");

        query.setParameter("code", code);

        return (List<Appointment>) query.getResultList();

    }
}
