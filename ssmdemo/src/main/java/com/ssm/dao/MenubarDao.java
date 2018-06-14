package com.ssm.dao;



import com.ssm.domain.Menubar;


public interface MenubarDao {
    int deleteByPrimaryKey(Menubar key);

    int insert(Menubar record);

    int insertSelective(Menubar record);

    Menubar selectById(Integer id);
    
    Menubar selectByShopid(Integer shopid);

    int updateByPrimaryKeySelective(Menubar record);

    int updateByPrimaryKey(Menubar record);
}