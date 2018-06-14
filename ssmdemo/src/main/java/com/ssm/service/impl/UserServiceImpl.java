package com.ssm.service.impl;

import com.ssm.domain.User;
import com.ssm.service.UserService;
import org.springframework.stereotype.Service;
import com.ssm.dao.UserDao;
import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;
    public User getUserById(int userId) {
        // TODO Auto-generated method stub
    	User user = userDao.selectByPrimaryKey(userId);
        return user;
    }
//自写部分
	public User checkLogin(String username, String password) {
		User user = userDao.getUserByName(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
	public User checkRegister(String username, String password, String type) {
		User user = userDao.getUserByName(username);
        if (user != null)
        {
           return user;
        }
        userDao.addUser(username, password,type);
    	return null; 
	}
} 

