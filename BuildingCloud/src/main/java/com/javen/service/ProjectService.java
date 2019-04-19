package com.javen.service;

import java.util.List;

import com.javen.model.PayType;
import com.javen.model.Project;
import com.javen.model.ServiceType;

public interface ProjectService {

    public int insertProject(Project project);

    public List<Project> showProject(int u_id);

    public int payProject(Integer id);
    
    public List<Project> myProject(Integer u_id);
    
    public int finishProject(Integer p_id);
    
    public List<ServiceType> selectService(); 
    
    public List<PayType> selectPayType();
    
    public List<Project> noPassProject(int u_id);
    
    public List<Project> myFinisheProject(int u_id);
}
