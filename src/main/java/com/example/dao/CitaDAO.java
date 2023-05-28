/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.dao;

/**
 *
 * @author Natasha
 */

import com.example.config.HibernateUtil;
import com.example.model.Cita;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class CitaDAO {

    public List<Cita> listarCitas() {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // Consulta para obtener la lista de citas usando Hibernate
            String consulta = "FROM Cita";
            return session.createQuery(consulta, Cita.class).list();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    // Agrega otros métodos CRUD según tus necesidades
}

