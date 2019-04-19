package com.javen.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javen.model.User;
import com.javen.service.IUserService;


@Controller

public class UserController {

	@Autowired
	private IUserService userService;

	//�û���¼
	@RequestMapping(value="/userLogin")
	public String login(User user, HttpSession session) {

		User user1 = userService.login(user);
		session.setAttribute("user1", user1);

		if (user1 != null) {

			if(user1.getRole_id() == 0){

				return "redirect:/admin/adminHome";
			}

			else if(user1.getRole_id() == 1){

				return "redirect:/home";
			}

			else if(user1.getRole_id() == 2){

				return "redirect:/home";
			}
		}
		return "login";
	}

	//�û�ע��
	@RequestMapping("/registe")
	public String registe(Model model, User user) {

		int result = userService.insertUser(user);

		model.addAttribute("result", result);
		return "login";
	}

	//�˳�
	@RequestMapping("/exit")
	public String exit(HttpSession session) {

		session.invalidate();
		return "home";
	}

	//�û��޸�����
	@RequestMapping("/updatePassword")
	public String updatePassword(User user, HttpSession session) {

		int result = userService.updatePassword(user);

		session.getAttribute("user");

		if (result == 1){
			User user1 = userService.selectById(user.getU_id());

			session.setAttribute("user1", user1);
		}
		return "redirect:/home";
	}

	//�ҷ��ӵ�
	@RequestMapping("/isWork")
	public String isWork(HttpSession session) {

		User user = (User) session.getAttribute("user1");
		int result = userService.isWork(user);
		
		if (result == 1){
			User user1 = userService.selectById(user.getU_id());
			session.setAttribute("user1", user1);
		}
		return "redirect:/home";
	}

	//�ҷ����ӵ�
	@RequestMapping("/noWork")
	public String noWork( HttpSession session) {

		User user = (User) session.getAttribute("user1");
		int result = userService.noWork(user);
		if (result == 1){
			User user1 = userService.selectById(user.getU_id());
			session.setAttribute("user1", user1);
		}
		return "redirect:/home";
	}
}