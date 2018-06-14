package com.ssm.dao.impl;



import javax.annotation.Resource;



import com.ssm.dao.ShopInfDao;
import com.ssm.domain.ShopInf;



//@Repository("shopInfDao")
public class ShopInfDaoImpl implements ShopInfDao{
//	@Resource(name = "shopInfDao")
//    private ShopInfDao shopInfDao;
	@Resource(name = "ShopInf")
	  private ShopInf shopInf;
	public void addShopInf(int userid,String shopname,String shopaddress,String telephone) {
		//shopInfDao.addShopInf(userid, shopname, shopaddress, telephone);
					
	}

	public ShopInf getShopInfByUserid(int userid) {
		// TODO Auto-generated method stub
		//return getShopInfByUserid(userid);
		return shopInf;
	}

	
}
