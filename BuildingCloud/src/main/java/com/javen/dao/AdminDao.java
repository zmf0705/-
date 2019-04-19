package com.javen.dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.javen.model.Project;
import com.javen.model.User;

public interface AdminDao {
	
	List<User> getAllUser();
	
	int deleteUser(int id);
	
	int auditProject(int id);
	
	int auditNotProject(int id);
	
	List<Project> getAllProject();
	
	List<Project> showProject();
	
	List<User> showRole2();
	
	int appointProject(@Param("u_id") int u_id,@Param("p_id") int p_id);
	
	int audit(@Param("id") int id,@Param("word") String word, @Param("date") String date);

}