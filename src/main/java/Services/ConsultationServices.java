package Services;

import Entities.Consultation;
import Entities.Pacient;

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
}
