package Entities;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
public class Appointment implements Serializable {

    @Id
    @GeneratedValue
    private long code;
    @ManyToOne
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Patient patient;
    private String date;
    private String description;
    private String insurance;
    private Boolean status;



    public  Appointment(){}
    public Appointment(Patient patient, String date, String description) {
        this.patient = patient;
        this.date = date;
        this.description = description;

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

    public String getinsurance() {
        return insurance;
    }

    public void setinsurance(String insurance) {
        this.insurance = insurance;
    }

    public String getInsurance() {
        return insurance;
    }

    public void setInsurance(String insurance) {
        this.insurance = insurance;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }
}
