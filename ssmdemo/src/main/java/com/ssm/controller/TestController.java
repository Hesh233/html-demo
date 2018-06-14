package com.ssm.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Scope(value = "prototype")
@RequestMapping("/")
public class TestController {
	@RequestMapping(value="/testdemo")
	public  String  Test(Model model)
	{
		List<List<String>>list1=new ArrayList();
		List<String> l1 = Arrays.asList("二级菜单1","二级菜单2","二级菜单3");//模拟获得数据
		List<String> l2 = Arrays.asList("/url1","/url2","/url3");
		List<List<String>>list2=new ArrayList();
		List<String> l3 = Arrays.asList("三级菜单1","三级菜单2","三级菜单3","三级菜单4");//模拟获得数据
		List<String> l4 = Arrays.asList("/url1","/url2","/url3","/url4");
		list1.add(l1);
		list1.add(l2);
		list2.add(l3);
		list2.add(l4);
		model.addAttribute("itemname1",list1);
		model.addAttribute("itemname2",list2);
		return"shop/testdemo";
		}
}
