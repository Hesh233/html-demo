package com.ssm.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.ShopInfDao;
import com.ssm.domain.ShopInf;
import com.ssm.service.ShopInfService;
@Service("shopInfService")
public class ShopInfServiceImpl implements ShopInfService{
	@Resource
    private ShopInfDao shopInfDao;
	public ShopInf checkShopInfRegister(int userid, String shopname, String shopaddress, String telephone) {
		shopInfDao.addShopInf(userid, shopname, shopaddress, telephone);
		return null;
	}

	public ShopInf checkUserid(int userid) {
		ShopInf shopInf = shopInfDao.getShopInfByUserid(userid);
        if (shopInf != null ) {
            return shopInf;
        }
        return null;		
	}
}
