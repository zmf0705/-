package com.javen.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javen.model.PayType;
import com.javen.model.Project;
import com.javen.model.ServiceType;
import com.javen.model.User;
import com.javen.service.IUserService;
import com.javen.service.ProjectService;

@Controller
public class ProjectController {

	@Resource
	private ProjectService projectService;
	
	@Resource
	private IUserService userService;

	//������Ŀ
	@RequestMapping(value="/insertProject")
	public String inserProject(Project project, Model model) {

		int result = projectService.insertProject(project);
		model.addAttribute("result", result);

		return "invite";
	}

	//Ͷ�꣬����
	@RequestMapping(value="/payProject")
	public String payProject(Integer id) {

		projectService.payProject(id);
		return "paySuccess";
	}

	//չʾ�ҵ���Ŀ
	@RequestMapping(value="/myProject")
	public String appointProject(Model model, HttpSession session) {

		User user = (User) session.getAttribute("user1");
		List<Project> list = projectService.myProject(user.getU_id());
		model.addAttribute("list", list);
		return "myProject";
	}

	//����ҵ���Ŀ
	@RequestMapping(value="/finishProject")
	public String finishProject(Model model, String id) {

		int result = projectService.finishProject(Integer.parseInt(id));
		model.addAttribute("result", result);
		return "redirect:/myProject";
	}

	//��ѯ���е�ҵ�����ͺ͸��ʽ
	@RequestMapping(value="/invite")
	public String selectService(Model model) {

		List<ServiceType> list = projectService.selectService();
		model.addAttribute("list", list);

		List<PayType> list1 = projectService.selectPayType();
		model.addAttribute("list1", list1);
		return "invite";
	}
}
