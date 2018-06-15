package com.ssm.controller;
//还没开始写，这个类不用管,目的是使后面url跳转符合视图界面
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
// 单例模式，自加
@Scope(value = "prototype")
@RequestMapping({ "/", "/user" })
public class ReturnPage {
	@RequestMapping(value="/loginForm")
	public String loginForm(HttpSession session,Model model) throws Exception {
		model.addAttribute("inf", session.getAttribute("inf"));
		session.removeAttribute("inf");
		return "login/login";		
	}	
	@RequestMapping(value="/registerForm")
	public String registerForm() throws Exception {
		return "login/register";		
	}
	@RequestMapping(value="/shopInfregisterForm")
	public String shopInfregisterForm() throws Exception {
		return "shop/shopInfregister";		
	}
	@RequestMapping(value="/welcome")
	public String welcome(HttpSession session,Model model) throws Exception {
		if(session.getAttribute("id")==null)
		{model.addAttribute("inf","登录已过期");
			return "login/login";}
		return "main/index";		
	}
	@RequestMapping(value="shopInf/menusetting")
	public String menusetting(HttpSession session,Model model) throws Exception {
		if(session.getAttribute("id")==null)
		{model.addAttribute("inf","登录已过期");
			return "login/login";}
		return "shop/menusetting";		
	}
	@RequestMapping(value="shopInf/menuset")
	public String menuset() throws Exception {
		return "shop/menuset";		
	}
	@RequestMapping(value="/fail")
	public String fail() throws Exception {
		return "fail";		
	}
	@RequestMapping(value="/shopInfregistersuccess")
	public String shopInfregistersuccess(HttpSession session,Model model) throws Exception {
		if(session.getAttribute("id")==null)
		{model.addAttribute("inf","登录已过期");
			return "login/login";}
		return "shop/shopInfregistersuccess";		
	}
	@RequestMapping(value="/index")
	public String index(HttpSession session,Model model) throws Exception {
		if(session.getAttribute("id")==null)
		{model.addAttribute("inf","登录已过期");
			return "login/login";}
		return "main/index";		
	}
}
