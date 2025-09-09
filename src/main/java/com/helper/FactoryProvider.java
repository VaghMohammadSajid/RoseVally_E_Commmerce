package com.helper;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
    private static SessionFactory factory;

    // Method to get the SessionFactory
    public static SessionFactory getFactory() {
        if (factory == null) {
            try {
                // Initialize the SessionFactory
                factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
                System.out.println("database created");
            } catch (Throwable ex) {
                // Log the exception and rethrow it
                System.err.println("Initial SessionFactory creation failed." + ex);
                throw new ExceptionInInitializerError(ex);
            }
        }
        return factory;
    }

    // Method to get a new Session
    public static Session getSession() {
        Session session = null; // Initialize session as null

        try {
            session = getFactory().openSession(); // Open a session
        } catch (Exception e) {
            // Log the exception and rethrow it
            System.err.println("Failed to open a session." + e);
            throw e;
        }

        return session;
    }
}
