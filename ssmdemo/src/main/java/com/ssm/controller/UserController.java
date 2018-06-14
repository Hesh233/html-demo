package com.ssm.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssm.domain.ShopInf;
import com.ssm.domain.User;
import com.ssm.service.ShopInfService;
import com.ssm.service.UserService;
import com.ssm.utils.CaptchaUtil;
import com.ssm.utils.myFilter;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
// 单例模式，自加
@Scope(value = "prototype")
@RequestMapping({"/","/user"})
public class UserController {
	@Resource
	private myFilter myFilter;
	@Resource
	private UserService userService;
	@Resource
	private ShopInfService shopInfService;
	// 自写部分 登录
	@RequestMapping(value = "/login", method = RequestMethod.POST) // 请求映射// http://localhost:8080/springmvc-annotation/login.action
	public String goLogin(User user, ShopInf shopInf ,Model model,HttpSession session, String code,HttpServletRequest request) throws Exception {     //user形参是输入的		
		/** 
	     * 验证码验证 
	     * @param session 
	     * @param code 
	     */  
		String codeSession = (String) session.getAttribute("code");  
        if (StringUtils.isEmpty(codeSession)) {  
            System.out.println("没有生成验证码信息");
//        	log.error("没有生成验证码信息");  
//            throw new IllegalStateException("ERR-01000");  
            return "redirect:fail";
        }  
        if (StringUtils.isEmpty(codeSession)) {  
            System.out.println("未填写验证码信息");
//        	log.error("未填写验证码信息");  
//            throw new BussinessException("ERR-06018");  
            return "redirect:fail";
        }  
        if (codeSession.equalsIgnoreCase(request.getParameter("captcha"))) {  
            // 验证码通过  
        } else {  
            System.out.println("验证码错误");
//            log.error("验证码错误");  
//            throw new BussinessException("ERR-06019");  
            return "redirect:fail";
        }  
		/** 
	     * 验证码验证 
	     */ 
		user = userService.checkLogin(user.getUsername(), user.getPassword());
		if (user != null) {
			System.out.println(user.getId()+user.getType());     //user数据库数据
			session.setAttribute("username",user.getUsername());
			session.setAttribute("id", user.getId());
			session.setAttribute("type", user.getType());
			shopInf = shopInfService.checkUserid(user.getId());       //判断商家是否填写信息
			if(user.getType().equals("商家")&&shopInf==null)
			{return "redirect:shopInfregisterForm";}			
			return "redirect:welcome";// 路径 WEB-INF/pages/welcome.jsp
		}
		return "redirect:fail"; // 返回逻辑名
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST) // 用户注册,400报错
																		// ,在注解@RequestParam，添加value="paramter",required=false.切记，是false.就OK了。
	public String goRegister(User user, Model model, HttpSession session,HttpServletRequest request,  //typeid写在构造方法上，不写在方法上创建
			@RequestParam(value = "passwordconfirm", required = false) String passwordconfirm,
			@RequestParam(value = "password", required = false) String password) throws Exception {
		if (!myFilter.checkboolean(user.getUsername(), user.getPassword())) {
			System.out.println("正则表达式不通过");
			return "redirect:fail";
		}

		if (password.equals(passwordconfirm)) {
			user = userService.checkRegister(user.getUsername(), user.getPassword(), user.getType());
			if (user == null) {
				session.setAttribute("inf", "注册成功，请登录"); 
				return "redirect:loginForm";// 路径 WEB-INF/pages/registersuccess.jsp
			}
			System.out.println("确认密码不正确");
			return "redirect:fail";// 验证密码不正确
		}
		System.out.println("登录错误");
		return "redirect:fail"; 
	}
	@RequestMapping("/shopInfregister")
	public String goShopInfRegister(User user,ShopInf shopInf ,Model model,HttpSession session) {
		System.out.println(shopInf.getShopname()+Integer.parseInt(session.getAttribute("id").toString()));
		shopInf=shopInfService.checkShopInfRegister(Integer.parseInt(session.getAttribute("id").toString()),shopInf.getShopname(),shopInf.getShopaddress(),shopInf.getTelephone());		
		return "redirect:shopInfregistersuccess";		
	}
	/** 
     * 给来看看而已，不用管
     */ 
	@RequestMapping("/showUser")
	public String toIndex(HttpServletRequest request, Model model) {
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = this.userService.getUserById(userId);
		model.addAttribute("user", user);
		return "showUser";
	}
	@RequestMapping("/check")  
	/** 
     * 验证码创建
     */ 
    public void createCode(HttpServletRequest request,HttpServletResponse response) throws IOException {  
        // 通知浏览器不要缓存  验证码Controller部分
        response.setHeader("Expires", "-1");  
        response.setHeader("Cache-Control", "no-cache");  
        response.setHeader("Pragma", "-1");  
        CaptchaUtil util = CaptchaUtil.Instance();  
        // 将验证码输入到session中，用来验证  
        String code = util.getString();  
        request.getSession().setAttribute("code", code);  
        // 输出打web页面  
        ImageIO.write(util.getImage(), "jpg", response.getOutputStream());  
    }  

}