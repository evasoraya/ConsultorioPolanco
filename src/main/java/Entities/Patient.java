package Entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;

@Entity
public class Patient {

    @Id
    @GeneratedValue
    private long code;
    private String ID;//
    private String name;//
    private String lastName;//
    private String birthdate;//
    private char gender;//
    private String phoneNumber;//
    private ArrayList<String> condiciones;//
    private String cellphone;//
    private String province;//
    private String city;//
    private String direction;//
    private String nationality;//
    private String reference;//
    private String emergencyName;
    private String emergencyPhoneNumber;
    private boolean privatePatient; //Falso si tiene seguro
    private String tutor;
    private String tutorPhoneNumber;

    public Patient (){

    }

    public Patient(String ID, String name, String lastName, String birthdate, char gender, String phoneNumber, String cellphone, String province, String city, String direction, String nationality, String reference, String emergencyName, String emergencyPhoneNumber, boolean privatePatient, String tutor, String tutorPhoneNumber) {
        this.ID = ID;
        this.name = name;
        this.lastName = lastName;
        this.birthdate = birthdate;
        this.gender = gender;
        this.phoneNumber = phoneNumber;
        this.cellphone = cellphone;
        this.province = province;
        this.city = city;
        this.direction = direction;
        this.nationality = nationality;
        this.reference = reference;
        this.emergencyName = emergencyName;
        this.emergencyPhoneNumber = emergencyPhoneNumber;
        this.privatePatient = privatePatient;
        this.tutor = tutor;
        this.tutorPhoneNumber = tutorPhoneNumber;
    }

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }

    public ArrayList<String> getCondiciones() {
        return condiciones;
    }

    public void setCondiciones(ArrayList<String> condiciones) {
        this.condiciones = condiciones;
    }

    public String getEmergencyName() {
        return emergencyName;
    }

    public void setEmergencyName(String emergencyName) {
        this.emergencyName = emergencyName;
    }

    public String getEmergencyPhoneNumber() {
        return emergencyPhoneNumber;
    }

    public void setEmergencyPhoneNumber(String emergencyPhoneNumber) {
        this.emergencyPhoneNumber = emergencyPhoneNumber;
    }

    public boolean isPrivatePatient() {
        return privatePatient;
    }

    public void setPrivatePatient(boolean privatePatient) {
        this.privatePatient = privatePatient;
    }

    public String getTutor() {
        return tutor;
    }

    public void setTutor(String tutor) {
        this.tutor = tutor;
    }

    public String getTutorPhoneNumber() {
        return tutorPhoneNumber;
    }

    public void setTutorPhoneNumber(String tutorPhoneNumber) {
        this.tutorPhoneNumber = tutorPhoneNumber;
    }
}
