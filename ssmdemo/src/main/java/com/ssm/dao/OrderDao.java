package com.ssm.dao;



import com.ssm.domain.Order;
import com.ssm.domain.OrderKey;

public interface OrderDao {
    int deleteByPrimaryKey(OrderKey key);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(OrderKey key);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
}