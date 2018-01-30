package Services;

import Entities.Record;

public class RecordServices extends GestionDB<Record> {
    private static RecordServices instancia;

    private RecordServices() {
        super(Record.class);
    }

    public static RecordServices getInstancia() {
        if (instancia == null) {
            instancia = new RecordServices();
        }
        return instancia;
    }
}
