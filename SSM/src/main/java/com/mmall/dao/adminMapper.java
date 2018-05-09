package com.mmall.dao;

import com.mmall.pojo.admin;

public interface adminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(admin record);

    int insertSelective(admin record);

    admin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(admin record);

    int updateByPrimaryKey(admin record);
}