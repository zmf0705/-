package com.javen.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javen.model.Project;
import com.javen.model.User;
import com.javen.service.AdminService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	//展示所有用户信息和项目信息
	@RequestMapping(value="/adminHome")
	public String getAllUser(Model model) {
		
		//所有用户
		List<User> list = adminService.getAllUse();
		model.addAttribute("list", list);
		
		//所有项目
		List<Project> lists = adminService.getAllProject();
		model.addAttribute("lists", lists);
		
		//委派已审核项目
		List<Project> list1 =  adminService.showProject();
		model.addAttribute("list1", list1);
		
		List<User> list2 = adminService.showRole2();
		model.addAttribute("list2", list2);
		return "/admin/adminHome";
	}
	
	//按照id删除用户
	@RequestMapping("/deleteUser")
	public String deleteUser(int id, Model model) {
		
		int result = adminService.deleteUser(id);
		model.addAttribute("result", result);
		return "redirect:/admin/adminHome";
	}
	
	//审核通过项目
	@RequestMapping(value="/auditProject")
	public String audit(@RequestParam(value="id",required=false) int id, @RequestParam(value="word",required=false) String word) {
		
		Date date1 = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(date1);
		adminService.audit(id, word, date);
		adminService.auditProject(id);
		return "redirect:/admin/adminHome";
	}
	
	//审核驳回项目
		@RequestMapping(value="/auditNotProject")
		public String auditNot(@RequestParam(value="id",required=false) int id, @RequestParam(value="word",required=false) String word) {
			
			Date date1 = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String date = sdf.format(date1);
			adminService.audit(id, word, date);
			
			adminService.auditNotProject(id);
			return "redirect:/admin/adminHome";
		}
	
	//管理员退出
	@RequestMapping(value="/adminExit")
	public String adminExit(HttpSession session) {
		
		session.invalidate();
		return "redirect:/login";
	}
	
	//委派任务
	@RequestMapping(value="/appointProject")
	public String appointProject(String u_id, String p_id, Model model) {
		
		int id1 = Integer.parseInt(u_id);
		int id2 = Integer.parseInt(p_id);
		int result1 = adminService.appointProject(id1, id2);
		
		model.addAttribute("result1", result1);
		return "redirect:/admin/adminHome";
	}
}