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
    private Date date;
    private String insurace;


    public  Appointment(){}
    public Appointment(Patient patient, Date date, String insurace) {
        this.patient = patient;
        this.date = date;
        this.insurace = insurace;

    }

    public String getInsurace() {
        return insurace;
    }

    public void setInsurace(String insurace) {
        this.insurace = insurace;
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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

}
