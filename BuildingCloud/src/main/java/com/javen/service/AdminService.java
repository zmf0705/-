package com.javen.service;

import java.util.List;
import com.javen.model.Project;
import com.javen.model.User;

public interface AdminService {
	
	public List<User> getAllUse();
	
	public int deleteUser(int id);
	
	public int auditProject(int id);
	
	public int auditNotProject(int id);
	
	public List<Project> getAllProject();
	
	public List<Project> showProject();
	
	public List<User> showRole2();
	
	public int appointProject(int u_id, int p_id);
	
	public int audit(int id, String word, String date);
	
}