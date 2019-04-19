package com.javen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;  

import com.javen.dao.IUserDao;
import com.javen.model.User;
import com.javen.service.IUserService;
  
@Service  
public class UserServiceImpl implements IUserService {  
    
	@Autowired  
    private IUserDao userDao;  
    
	//登录
	public User login(User user) {
		
		return userDao.login(user);
	}
	
	//添加用户
	public int insertUser(User user) {
		
		return userDao.insertUser(user);
	}

	//用户修改密码
	public int updatePassword(User user) {
		
		return userDao.updatePassword(user);
	}

	public User selectById(int id) {

		return userDao.selectById(id);
	}

	public int isWork(User user) {

		return userDao.isWork(user);
	}

	public int noWork(User user) {

		return userDao.noWork(user);
	}

}  
