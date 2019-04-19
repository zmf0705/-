package com.javen.dao;

import com.javen.model.User;

public interface IUserDao {
	User login(User user);
	
	int insertUser(User user);
	
	int updatePassword(User user);
	
	User selectById(int id);
	
	int isWork(User user);
	
	int noWork(User user);
}