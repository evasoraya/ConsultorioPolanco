package Services;

import Entities.Patient;

public class PatientServices extends GestionDB<Patient> {
    private static PatientServices instancia;

    private PatientServices() {
        super(Patient.class);
    }

    public static PatientServices getInstancia() {
        if (instancia == null) {
            instancia = new PatientServices();
        }
        return instancia;
    }

}