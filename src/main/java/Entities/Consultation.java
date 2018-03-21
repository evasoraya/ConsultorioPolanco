package Entities;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Consultation implements Serializable {

    @Id
    @GeneratedValue
    private long code;
    @ManyToOne
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Appointment appointment;
    private String razonVisita;
    private String inicioSintomas;
    private String frecuenciaSintomas;
    private String condicion;
    private String lugarDolor;
    private String loHaceSentirMejor;
    private String frecuenciaDolor;
    private String actividadesDolor;
    private boolean tratamientoAnterior;
    private String cualTratamientoAnterior;
    private boolean historiaFamiliarMismaCondicion;
    private String cualFamiliarMismaCondicion;
    private boolean enfermedadesSerias;
    private String cualEnfermedadSeria;
    private boolean hospitalizacionesAnteriores;
    private String cualHospitalizacionesAnteriores;
    private boolean operacionesAnteriores;
    private String cualOperacionesAnteriores;
    private boolean medicamentos;
    private String cualMedicamentos;
    private boolean alergias;
    private String cualAlergias;
    private boolean SihistorialFamiliarMismaCondicionHMP;
    private String historialFamiliarMismaCondicionHMP;
    private String lugarNacimiento;
    private float pesoLbs;
    private float pesoOnz;
    private float estatura;
    private boolean prematuro;
    private boolean cesarea;
    private int cantidadEmbarazos;
    private int cantidadHijos;
    private float mesesSeParo;
    private float mesesCamino;
    private float mesesHablo;
    private boolean fiebre;
    private String fiebreDescripcion;
    private boolean piel;
    private String pielDescripcion;
    private String description;
    private String prescription;

    public Consultation (){

    }

    public String getrazonVisita() {
        return razonVisita;
    }

    public void setrazonVisita(String razonVisita) {
        this.razonVisita = razonVisita;
    }

    public Appointment getAppointment() {
        return appointment;
    }

    public void setAppointment(Appointment appointment) {
        this.appointment = appointment;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrescription() {
        return prescription;
    }

    public void setPrescription(String prescription) {
        this.prescription = prescription;
    }

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public String getRazonVisita() {
        return razonVisita;
    }

    public void setRazonVisita(String razonVisita) {
        this.razonVisita = razonVisita;
    }

    public String getInicioSintomas() {
        return inicioSintomas;
    }

    public void setInicioSintomas(String inicioSintomas) {
        this.inicioSintomas = inicioSintomas;
    }

    public String getFrecuenciaSintomas() {
        return frecuenciaSintomas;
    }

    public void setFrecuenciaSintomas(String frecuenciaSintomas) {
        this.frecuenciaSintomas = frecuenciaSintomas;
    }

    public String getCondicion() {
        return condicion;
    }

    public void setCondicion(String condicion) {
        this.condicion = condicion;
    }

    public String getLugarDolor() {
        return lugarDolor;
    }

    public void setLugarDolor(String lugarDolor) {
        this.lugarDolor = lugarDolor;
    }

    public String getLoHaceSentirMejor() {
        return loHaceSentirMejor;
    }

    public void setLoHaceSentirMejor(String loHaceSentirMejor) {
        this.loHaceSentirMejor = loHaceSentirMejor;
    }

    public String getFrecuenciaDolor() {
        return frecuenciaDolor;
    }

    public void setFrecuenciaDolor(String frecuenciaDolor) {
        this.frecuenciaDolor = frecuenciaDolor;
    }

    public String getActividadesDolor() {
        return actividadesDolor;
    }

    public void setActividadesDolor(String actividadesDolor) {
        this.actividadesDolor = actividadesDolor;
    }

    public boolean isTratamientoAnterior() {
        return tratamientoAnterior;
    }

    public void setTratamientoAnterior(boolean tratamientoAnterior) {
        this.tratamientoAnterior = tratamientoAnterior;
    }

    public String getCualTratamientoAnterior() {
        return cualTratamientoAnterior;
    }

    public void setCualTratamientoAnterior(String cualTratamientoAnterior) {
        this.cualTratamientoAnterior = cualTratamientoAnterior;
    }

    public boolean isHistoriaFamiliarMismaCondicion() {
        return historiaFamiliarMismaCondicion;
    }

    public void setHistoriaFamiliarMismaCondicion(boolean historiaFamiliarMismaCondicion) {
        this.historiaFamiliarMismaCondicion = historiaFamiliarMismaCondicion;
    }

    public String getCualFamiliarMismaCondicion() {
        return cualFamiliarMismaCondicion;
    }

    public void setCualFamiliarMismaCondicion(String cualFamiliarMismaCondicion) {
        this.cualFamiliarMismaCondicion = cualFamiliarMismaCondicion;
    }

    public boolean isEnfermedadesSerias() {
        return enfermedadesSerias;
    }

    public void setEnfermedadesSerias(boolean enfermedadesSerias) {
        this.enfermedadesSerias = enfermedadesSerias;
    }

    public String getCualEnfermedadSeria() {
        return cualEnfermedadSeria;
    }

    public void setCualEnfermedadSeria(String cualEnfermedadSeria) {
        this.cualEnfermedadSeria = cualEnfermedadSeria;
    }

    public boolean isHospitalizacionesAnteriores() {
        return hospitalizacionesAnteriores;
    }

    public void setHospitalizacionesAnteriores(boolean hospitalizacionesAnteriores) {
        this.hospitalizacionesAnteriores = hospitalizacionesAnteriores;
    }

    public String getCualHospitalizacionesAnteriores() {
        return cualHospitalizacionesAnteriores;
    }

    public void setCualHospitalizacionesAnteriores(String cualHospitalizacionesAnteriores) {
        this.cualHospitalizacionesAnteriores = cualHospitalizacionesAnteriores;
    }

    public boolean isOperacionesAnteriores() {
        return operacionesAnteriores;
    }

    public void setOperacionesAnteriores(boolean operacionesAnteriores) {
        this.operacionesAnteriores = operacionesAnteriores;
    }

    public String getCualOperacionesAnteriores() {
        return cualOperacionesAnteriores;
    }

    public void setCualOperacionesAnteriores(String cualOperacionesAnteriores) {
        this.cualOperacionesAnteriores = cualOperacionesAnteriores;
    }

    public boolean isMedicamentos() {
        return medicamentos;
    }

    public void setMedicamentos(boolean medicamentos) {
        this.medicamentos = medicamentos;
    }

    public String getCualMedicamentos() {
        return cualMedicamentos;
    }

    public void setCualMedicamentos(String cualMedicamentos) {
        this.cualMedicamentos = cualMedicamentos;
    }

    public boolean isAlergias() {
        return alergias;
    }

    public void setAlergias(boolean alergias) {
        this.alergias = alergias;
    }

    public String getCualAlergias() {
        return cualAlergias;
    }

    public void setCualAlergias(String cualAlergias) {
        this.cualAlergias = cualAlergias;
    }

    public String getHistorialFamiliarMismaCondicionHMP() {
        return historialFamiliarMismaCondicionHMP;
    }

    public void setHistorialFamiliarMismaCondicionHMP(String historialFamiliarMismaCondicionHMP) {
        this.historialFamiliarMismaCondicionHMP = historialFamiliarMismaCondicionHMP;
    }

    public String getLugarNacimiento() {
        return lugarNacimiento;
    }

    public void setLugarNacimiento(String lugarNacimiento) {
        this.lugarNacimiento = lugarNacimiento;
    }

    public float getPesoLbs() {
        return pesoLbs;
    }

    public void setPesoLbs(float pesoLbs) {
        this.pesoLbs = pesoLbs;
    }

    public float getPesoOnz() {
        return pesoOnz;
    }

    public void setPesoOnz(float pesoOnz) {
        this.pesoOnz = pesoOnz;
    }

    public float getEstatura() {
        return estatura;
    }

    public void setEstatura(float estatura) {
        this.estatura = estatura;
    }

    public boolean isPrematuro() {
        return prematuro;
    }

    public void setPrematuro(boolean prematuro) {
        this.prematuro = prematuro;
    }

    public boolean isCesarea() {
        return cesarea;
    }

    public void setCesarea(boolean cesarea) {
        this.cesarea = cesarea;
    }

    public int getCantidadEmbarazos() {
        return cantidadEmbarazos;
    }

    public void setCantidadEmbarazos(int cantidadEmbarazos) {
        this.cantidadEmbarazos = cantidadEmbarazos;
    }

    public int getCantidadHijos() {
        return cantidadHijos;
    }

    public void setCantidadHijos(int cantidadHijos) {
        this.cantidadHijos = cantidadHijos;
    }

    public float getMesesSeParo() {
        return mesesSeParo;
    }

    public void setMesesSeParo(float mesesSeParo) {
        this.mesesSeParo = mesesSeParo;
    }

    public float getMesesCamino() {
        return mesesCamino;
    }

    public void setMesesCamino(float mesesCamino) {
        this.mesesCamino = mesesCamino;
    }

    public float getMesesHablo() {
        return mesesHablo;
    }

    public void setMesesHablo(float mesesHablo) {
        this.mesesHablo = mesesHablo;
    }

    public boolean isFiebre() {
        return fiebre;
    }

    public void setFiebre(boolean fiebre) {
        this.fiebre = fiebre;
    }

    public String getFiebreDescripcion() {
        return fiebreDescripcion;
    }

    public void setFiebreDescripcion(String fiebreDescripcion) {
        this.fiebreDescripcion = fiebreDescripcion;
    }

    public boolean isPiel() {
        return piel;
    }

    public void setPiel(boolean piel) {
        this.piel = piel;
    }

    public String getPielDescripcion() {
        return pielDescripcion;
    }

    public void setPielDescripcion(String pielDescripcion) {
        this.pielDescripcion = pielDescripcion;
    }

    public boolean isSihistorialFamiliarMismaCondicionHMP() {
        return SihistorialFamiliarMismaCondicionHMP;
    }

    public void setSihistorialFamiliarMismaCondicionHMP(boolean sihistorialFamiliarMismaCondicionHMP) {
        SihistorialFamiliarMismaCondicionHMP = sihistorialFamiliarMismaCondicionHMP;
    }
}
