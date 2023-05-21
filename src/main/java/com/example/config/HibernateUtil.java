/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.config;

/**
 *
 * @author Natasha
 */

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    private static final SessionFactory sessionFactory;

    static {
        try {
            // Cargar la configuración de hibernate.cfg.xml
            Configuration configuration = new Configuration();
            // Configuración de la conexión a la base de datos PostgreSQL
            configuration.setProperty("hibernate.connection.driver_class", "org.postgresql.Driver");
            configuration.setProperty("hibernate.connection.url", "jdbc:postgresql://localhost:5432/Proyecto1");
            configuration.setProperty("hibernate.connection.username", "postgres");
            configuration.setProperty("hibernate.connection.password", "morlo");

            // Configuración del dialecto para PostgreSQL
            configuration.setProperty("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");

            // Mapeo de clases
            configuration.addAnnotatedClass(com.example.model.Usuario.class);
            configuration.addAnnotatedClass(com.example.model.Cita.class);
            

            // Opcional: Mostrar SQL generado por Hibernate
            configuration.setProperty("hibernate.show_sql", "true");

            // Opcional: Formatear SQL generado por Hibernate
            configuration.setProperty("hibernate.format_sql", "true");

            StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();

            // Crear la fábrica de sesiones
            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}

