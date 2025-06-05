package com.Test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.helper.FactoryProvider;

public class TestHibernate {
    public static void main(String[] args) {
        SessionFactory factory = FactoryProvider.getFactory();
        System.out.println("Hibernate setup successful!");

        Session session = factory.openSession();
        session.close();
    }
}
