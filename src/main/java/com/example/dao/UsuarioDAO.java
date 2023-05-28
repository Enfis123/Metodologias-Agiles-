/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.dao;

/**
 *
 * @author Natasha
 */
import com.example.model.Usuario;
import com.example.config.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class UsuarioDAO {

    public List<Usuario> listarUsuarios() {
    try (Session session = HibernateUtil.getSessionFactory().openSession()) {
        // Consulta para obtener la lista de usuarios usando Hibernate
        String consulta = "FROM Usuario";
        return session.createQuery(consulta, Usuario.class).list();
    } catch (Exception e) {
        e.printStackTrace();
        return null;
    }
}


    public void guardarUsuario(Usuario usuario) {
    try {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        // Guardar el usuario en la base de datos usando Hibernate
        session.save(usuario);
        transaction.commit();
    } catch (Exception e) {
        e.printStackTrace();
    }
}


    public void actualizarUsuario(Usuario usuario) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            Transaction transaction = session.beginTransaction();
            // Actualizar el usuario en la base de datos usando Hibernate
            session.update(usuario);
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void eliminarUsuario(Usuario usuario) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            Transaction transaction = session.beginTransaction();
            // Eliminar el usuario de la base de datos usando Hibernate
            session.delete(usuario);
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

