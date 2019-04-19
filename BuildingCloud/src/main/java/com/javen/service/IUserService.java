package com.javen.service;

import com.javen.model.User;

public interface IUserService {  
    
    public User login(User user);
    
    public int insertUser(User user);
    
    public int updatePassword(User user);
    
    public User selectById(int id);
    
    public int isWork(User user);
    
    public int noWork(User user);
}  