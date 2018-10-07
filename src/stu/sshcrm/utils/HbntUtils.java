package stu.sshcrm.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HbntUtils {
	
	private static SessionFactory sessionFactory; 
	
	static {
		sessionFactory = new Configuration().configure().buildSessionFactory();
	}
	
	public static Session openSession() {
		return sessionFactory.openSession();
	}
	
	public static Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public static void beginTransaction() {
		getCurrentSession().beginTransaction();
	}
	
	public static void commit() {
		getCurrentSession().getTransaction().commit();
	}
	
	public static void rollback() {
		getCurrentSession().getTransaction().rollback();
	}
	
}
