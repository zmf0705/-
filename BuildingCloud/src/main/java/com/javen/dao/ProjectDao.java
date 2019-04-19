package com.javen.dao;

import java.util.List;

import com.javen.model.PayType;
import com.javen.model.Project;
import com.javen.model.ServiceType;

public interface ProjectDao {

    int insert(Project project);

    List<Project> showProject(int u_id);

    int payProject(Integer id);
    
    List<Project> myProject(Integer u_id);
    
    int finishProject(Integer p_id);
    
    List<ServiceType> selectService(); 
    
    List<PayType> selectPayType();
    
    List<Project> noPassProject(int u_id);
    
    List<Project> myFinisheProject(int u_id);
}
