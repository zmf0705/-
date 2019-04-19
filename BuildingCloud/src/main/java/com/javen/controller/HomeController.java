package com.javen.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javen.model.Project;
import com.javen.model.User;
import com.javen.service.ProjectService;

@Controller
public class HomeController {

	@Autowired
	private ProjectService projectService;

	//����ҳ��
	@RequestMapping("/{name}")
	public String test (@PathVariable("name") String someName, HttpSession session, Model model) {

		return someName;
	}

	//��ѯ�ҵ����е����ͨ����Ŀ
	@RequestMapping("/service")
	public String test1 (HttpSession session, Model model) {

		User user = (User) session.getAttribute("user1");

		List<Project> project = projectService.showProject(user.getU_id());
		model.addAttribute("projects", project);
		return "service";
	}

	//��ѯ�ҵ��������Ϊ��ͨ���Լ���ɵ���Ŀ��Ŀ
	@RequestMapping(value="/noPass")
	public String noPassProject(Model model, HttpSession session) {
		
		User user = (User) session.getAttribute("user1");
		List<Project> projects = projectService.noPassProject(user.getU_id());
		List<Project> projects2 = projectService.myFinisheProject(user.getU_id());
		model.addAttribute("projects", projects);
		model.addAttribute("projects2", projects2);
		return "noPass";
	}
}