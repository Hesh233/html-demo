package com.ssm.dao;


import org.apache.ibatis.annotations.Param;

import com.ssm.domain.User;

public interface UserDao {
    //自写部分   
        //接口方法，通过用户名得到User对象
	 public User getUserByName(@Param(value="username") String username);

		public User selectByPrimaryKey(Integer id);
		
		public void addUser(@Param(value="username") String username,@Param(value="password") String password,@Param(value="type") String type);
		//mapper文件中的update,delete,insert语句是不需要设置返回类型的，它们都是默认返回一个int，
    
	int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}