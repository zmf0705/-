package com.javen.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javen.dao.AdminDao;
import com.javen.model.Project;
import com.javen.model.User;
import com.javen.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	public List<User> getAllUse() {

		return adminDao.getAllUser();
	}

	public int deleteUser(int id) {
		return adminDao.deleteUser(id);
	}

	public int auditProject(int id) {

		return adminDao.auditProject(id);
	}

	public List<Project> getAllProject() {

		return adminDao.getAllProject();
	}

	public List<Project> showProject() {

		return adminDao.showProject();
	}

	public List<User> showRole2() {

		return adminDao.showRole2();
	}

	public int appointProject(int u_id, int p_id) {
		
		return adminDao.appointProject(u_id, p_id);
	}

	public int auditNotProject(int id) {

		return adminDao.auditNotProject(id);
	}

	public int audit(int id, String word, String date) {

		return adminDao.audit(id, word, date);
	}

}