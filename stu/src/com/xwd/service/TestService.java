package com.xwd.service;

import java.io.Serializable;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.xwd.dao.TestDao;
import com.xwd.entity.User;

public class TestService {
	private SessionFactory sf;
	private TestDao testdao;
	
	
	public int add(Object o){//���
		System.out.println("����TestService����,��ӵķ���������"+o);
		return testdao.insert(o);
	}
	
	public int delete(Class cls,Serializable id){//ɾ��
		System.out.println("����TestService����,ɾ���ķ���������");
		return testdao.delete(cls, id);
	}
	
	public int update(Object o){//�޸�
		System.out.println("����TestService����,�޸ĵķ���������"+o);
		return testdao.update(o);
	}
	public List findAll(Class cls){//��ѯ
		System.out.println("����TestService����,��ѯ�ķ���������");
		return testdao.getAll(cls);
	}

	

	public SessionFactory getSf() {
		return sf;
	}
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	public TestDao getTestdao() {
		return testdao;
	}

	public void setTestdao(TestDao testdao) {
		this.testdao = testdao;
	}

}
