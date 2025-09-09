package com.helper;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

public class HibernateStartupListener implements ServletContextListener{
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // This runs when the web app is deployed
        try {
            FactoryProvider.getFactory(); // Force Hibernate initialization
            System.out.println("✅ Hibernate SessionFactory initialized at startup.");
        } catch (Exception e) {
            System.err.println("❌ Failed to initialize Hibernate: " + e);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Clean up when Tomcat shuts down
        if (FactoryProvider.getFactory() != null) {
            FactoryProvider.getFactory().close();
            System.out.println("🔹 Hibernate SessionFactory closed.");
        }
    }
}
