/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "cita")
public class Cita implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nombre_paciente")
    private String nombrePaciente;

    @Column(name = "nombre_medico")
    private String nombreMedico;

    @Column(name = "fecha")
    private Date fecha;

    // Constructor por defecto
    public Cita() {
    }

    // Constructor con todos los atributos
    public Cita(String nombrePaciente, String nombreMedico, Date fecha) {
        this.nombrePaciente = nombrePaciente;
        this.nombreMedico = nombreMedico;
        this.fecha = fecha;
    }

    // Getters y Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombrePaciente() {
        return nombrePaciente;
    }

    public void setNombrePaciente(String nombrePaciente) {
        this.nombrePaciente = nombrePaciente;
    }

    public String getNombreMedico() {
        return nombreMedico;
    }

    public void setNombreMedico(String nombreMedico) {
        this.nombreMedico = nombreMedico;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    @Override
    public String toString() {
        return "Cita{" + "id=" + id + ", nombrePaciente=" + nombrePaciente + ", nombreMedico=" + nombreMedico + ", fecha=" + fecha + '}';
    }
    
}
