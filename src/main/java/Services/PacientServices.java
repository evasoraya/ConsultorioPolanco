package Services;

import Entities.Pacient;

public class PacientServices extends GestionDB<Pacient> {
    private static PacientServices instancia;

    private PacientServices() {
        super(Pacient.class);
    }

    public static PacientServices getInstancia() {
        if (instancia == null) {
            instancia = new PacientServices();
        }
        return instancia;
    }

}