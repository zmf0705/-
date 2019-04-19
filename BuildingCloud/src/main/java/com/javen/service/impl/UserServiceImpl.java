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
    
	//��¼
	public User login(User user) {
		
		return userDao.login(user);
	}
	
	//����û�
	public int insertUser(User user) {
		
		return userDao.insertUser(user);
	}

	//�û��޸�����
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
