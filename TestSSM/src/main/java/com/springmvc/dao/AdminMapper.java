package com.springmvc.dao;

import com.springmvc.pojo.Admin;

import java.util.List;

public interface AdminMapper {

    void save(Admin admin);
    boolean update(Admin admin);
    boolean delete(int id);
    Admin findById(int id);
    List<Admin> findAll();
    Admin login(Admin admin);

}