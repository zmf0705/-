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

	//发布项目
	@RequestMapping(value="/insertProject")
	public String inserProject(Project project, Model model) {

		int result = projectService.insertProject(project);
		model.addAttribute("result", result);

		return "invite";
	}

	//投标，付款
	@RequestMapping(value="/payProject")
	public String payProject(Integer id) {

		projectService.payProject(id);
		return "paySuccess";
	}

	//展示我的项目
	@RequestMapping(value="/myProject")
	public String appointProject(Model model, HttpSession session) {

		User user = (User) session.getAttribute("user1");
		List<Project> list = projectService.myProject(user.getU_id());
		model.addAttribute("list", list);
		return "myProject";
	}

	//完成我的项目
	@RequestMapping(value="/finishProject")
	public String finishProject(Model model, String id) {

		int result = projectService.finishProject(Integer.parseInt(id));
		model.addAttribute("result", result);
		return "redirect:/myProject";
	}

	//查询所有的业务类型和付款方式
	@RequestMapping(value="/invite")
	public String selectService(Model model) {

		List<ServiceType> list = projectService.selectService();
		model.addAttribute("list", list);

		List<PayType> list1 = projectService.selectPayType();
		model.addAttribute("list1", list1);
		return "invite";
	}
}
