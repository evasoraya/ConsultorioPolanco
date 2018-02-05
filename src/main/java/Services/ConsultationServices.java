package Services;

import Entities.Consultation;
import Entities.User;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class ConsultationServices extends GestionDB<Consultation> {

    private static ConsultationServices instancia;

    private ConsultationServices() {
        super(Consultation.class);
    }

    public static ConsultationServices getInstancia() {
        if (instancia == null) {
            instancia = new ConsultationServices();
        }
        return instancia;
    }

    public List<Consultation> findByPatient(Long code){
        EntityManager em = getEntityManager();
        Query query = em.createQuery("select c from  Consultation c where c.appointment.patient.code like :code");

        query.setParameter("code", code);

        return (List<Consultation>) query.getResultList();

    }
}
