package Entities;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Appointment {

    @Id
    @GeneratedValue
    private long code;
    @ManyToOne
    private Patient patient;
    private String date;
    private String description;
    //En caso que no sea un paciente:
    private String name;
    private String telefono;


    public  Appointment(){}
    public Appointment(Patient patient, String date, String description) {
        this.patient = patient;
        this.date = date;
        this.description = description;

    }

    public Appointment(String date, String description, String name, String telefono) {
        this.date = date;
        this.description = description;
        this.name = name;
        this.telefono = telefono;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
}
