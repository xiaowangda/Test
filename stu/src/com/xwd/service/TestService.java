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
	
	
	public int add(Object o){//添加
		System.out.println("我在TestService类中,添加的方法运行了"+o);
		return testdao.insert(o);
	}
	
	public int delete(Class cls,Serializable id){//删除
		System.out.println("我在TestService类中,删除的方法运行了");
		return testdao.delete(cls, id);
	}
	
	public int update(Object o){//修改
		System.out.println("我在TestService类中,修改的方法运行了"+o);
		return testdao.update(o);
	}
	public List findAll(Class cls){//查询
		System.out.println("我在TestService类中,查询的方法运行了");
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
