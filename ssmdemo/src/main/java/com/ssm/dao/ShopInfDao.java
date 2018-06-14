package com.ssm.dao;

import org.apache.ibatis.annotations.Param;

import com.ssm.domain.ShopInf;

public interface ShopInfDao {

		public void addShopInf(@Param(value="userid") int userid,@Param(value="shopname") String shopname,@Param(value="shopaddress") String shopaddress,@Param(value="telephone") String telephone);
		//mapper文件中的update,delete,insert语句是不需要设置返回类型的，它们都是默认返回一个int，
		public ShopInf getShopInfByUserid(@Param(value="userid") int userid) ;
}
