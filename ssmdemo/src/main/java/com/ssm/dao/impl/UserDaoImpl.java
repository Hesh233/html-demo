package com.ssm.dao.impl;
import javax.annotation.Resource;


//自写impl
import com.ssm.dao.UserDao;
import com.ssm.domain.User;

//@为自加部分
//@Repository("userDao")
public class UserDaoImpl implements UserDao {
//注解是自写部分
//	@Resource(name = "UserDao")
//    private UserDao userDao;
	@Resource(name = "User")
  private User user;
	//自写函数部分
	public void addUser(String username, String password,String type) {
		// TODO Auto-generated method stub
		//userDao.addUser(username,password,type);
		
	}
		public User getUserByName(String username) {
	        //调用Mapper类从数据库中得到User对象
			return user;
			//return getUserByName(username);
	    }
		public User selectByPrimaryKey(Integer id) {
			// TODO Auto-generated method stub
			return user;
			//return selectByPrimaryKey(id);
		}
	//后面部分是模版,可以不用
 
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

 
	public int insert(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

 
	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

 
	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

 
	public int updateByPrimaryKey(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
