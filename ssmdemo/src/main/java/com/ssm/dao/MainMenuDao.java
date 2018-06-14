package com.ssm.dao;

import org.apache.ibatis.annotations.Param;

import com.ssm.domain.MainMenu;

public interface MainMenuDao {
	MainMenu selectByClass2(MainMenu record,@Param(value="status")String status);
	
	int deleteByPrimaryKey(String id);

    int insert(MainMenu record);

    int insertSelective(MainMenu record);

    MainMenu selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MainMenu record);

    int updateByPrimaryKey(MainMenu record);
}