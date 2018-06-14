package com.ssm.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import com.ssm.dao.MenuDao;
import com.ssm.domain.Menu;

public class MenuDaoImpl implements MenuDao{
	@Resource(name = "Menu")
	private Menu menu;

	public int deleteByPrimaryKey(Menu key) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int updateById(int id,int menubar,String name,double price,String status,int iid,int menubariid) {
		
		return 0;
	}
	public int insert(int id, int menubarid, String name, double price, String status) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int insertSelective(Menu record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Menu selectByPrimaryKey(Menu key) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateByPrimaryKeySelective(Menu record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKey(Menu record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<List<Menu>> selectAll(int page,int limit) {
	//	List<Menu> mu = new ArrayList();//自己打的，不知道对不对

		return null;
	}


	public int selectcount() {
		
		return selectcount();
	}

	public void delmenuByids(String[] delmenu) {
			
	}
}
