package com.javen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javen.dao.ProjectDao;
import com.javen.model.PayType;
import com.javen.model.Project;
import com.javen.model.ServiceType;
import com.javen.service.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService{

    @Autowired
    private ProjectDao projectDao;

    public int insertProject(Project project) {

        return this.projectDao.insert(project);
    }

    public List<Project> showProject(int u_id) {

        return this.projectDao.showProject(u_id);
    }

    public int payProject(Integer id) {

        return this.projectDao.payProject(id);
    }

	public List<Project> myProject(Integer u_id) {

		return projectDao.myProject(u_id);
	}

	public int finishProject(Integer p_id) {

		return projectDao.finishProject(p_id);
	}

	public List<ServiceType> selectService() {

		return projectDao.selectService();
	}

	public List<PayType> selectPayType() {

		return projectDao.selectPayType();
	}

	public List<Project> noPassProject(int u_id) {

		return projectDao.noPassProject(u_id);
	}

	public List<Project> myFinisheProject(int u_id) {

		return projectDao.myFinisheProject(u_id);
	}
}
