package com.xwd.action;

import java.util.List;


import com.xwd.entity.User;
import com.xwd.service.TestService;

public class TestAction {
	private User user;
	private TestService testservice;
	private List list;
	
	public String execute(){
		int save=testservice.add(user);
		System.out.println("save:"+save);
		list=testservice.findAll(User.class);
		return "success";
		
	}
	
	public String delete(){
		testservice.delete(User.class,user.getId());
		System.out.println("delete:"+1);
		//��ѯ����������,��ʾҳ��
		list=testservice.findAll(User.class);
		return "success";
		
	}
	
	public String update(){
		int update = testservice.update(user);
		System.out.println("update:"+update);
		//��ѯ����������,��ʾҳ��
		list = testservice.findAll(User.class);
		return "success";
		
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public TestService getTestservice() {
		return testservice;
	}

	public void setTestservice(TestService testservice) {
		this.testservice = testservice;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}
	

}
