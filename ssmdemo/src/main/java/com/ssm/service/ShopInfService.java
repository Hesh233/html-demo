package com.ssm.service;

import com.ssm.domain.ShopInf;
import com.ssm.domain.User;

public interface ShopInfService {
	public ShopInf checkShopInfRegister(int userid, String shopname, String shopaddress, String telephone);
	public ShopInf checkUserid(int userid);
}
