package com.ssm.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.domain.Menu;


public interface MenuDao {
    int deleteByPrimaryKey(Menu key);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Menu key);
    
    List<List<Menu>> selectAll(@Param(value="page") int page,@Param(value="limit") int limit);
    
    void delmenuByids(String[] delmenu);
    
    int selectcount();

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
    
    int updateById(@Param(value="id")int id,@Param(value="menubarid")int menubarid,@Param(value="name")String name,@Param(value="price")double price,@Param(value="status")String status,@Param(value="iid")int iid,@Param(value="menubariid")int menubariid);

	int insert(@Param(value="id")int id,@Param(value="menubarid")int menubarid,@Param(value="name")String name,@Param(value="price")double price,@Param(value="status")String status);
}