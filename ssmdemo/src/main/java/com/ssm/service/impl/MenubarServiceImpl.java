package com.ssm.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.MenubarDao;
import com.ssm.domain.Menubar;
import com.ssm.service.MenubarService;
@Service("menubarService")
public class MenubarServiceImpl implements MenubarService {
  @Resource
  private MenubarDao menubarDao;
	public Menubar getMenubarByshopid(int shopid) {
		Menubar menubar=menubarDao.selectByShopid(shopid);
		
		return menubar;
	}

	public Menubar getMenubarByid(int id) {
		Menubar menubar=menubarDao.selectById(id);
		return menubar;
	}

}
