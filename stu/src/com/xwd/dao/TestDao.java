package com.xwd.dao;
import java.io.Serializable;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class TestDao {
	private SessionFactory sf;
	public int insert(Object o){
		try {
			Session session=sf.getCurrentSession();
			session.save(o);
			return 1;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	
	public int delete(Class cls,Serializable id){
		try {
			Session session=sf.getCurrentSession();
			Object o = session.get(cls,id);
			session.delete(o);
			return 1;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	
	public int update(Object o){
		try {
			Session session=sf.getCurrentSession();
			session.update(o);
			return 1;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	
	public List getAll(Class cls){
		Session session=sf.getCurrentSession();
		Query query = session.createQuery("from "+cls.getSimpleName());
		System.out.println("TestDao getAll cls.getSimpleName()"+cls.getSimpleName());
		return query.list();
	}
	
	public SessionFactory getSf() {
		return sf;
	}

	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}

	
}
