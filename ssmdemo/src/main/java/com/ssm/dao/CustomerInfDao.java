package com.ssm.dao;



import com.ssm.domain.CustomerInf;

public interface CustomerInfDao {
    int deleteByUserid(Integer id);

    int insert(CustomerInf record);

    int insertSelective(CustomerInf record);

    CustomerInf selectCustomerInfByuserId(Integer id);

    CustomerInf selectByPrimaryKey(Integer id);

    int updateByUseridSelective(CustomerInf record);

    int updateByPrimaryKey(CustomerInf record);
}