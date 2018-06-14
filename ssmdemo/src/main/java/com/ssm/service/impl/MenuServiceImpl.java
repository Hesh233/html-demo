package com.ssm.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.MenuDao;
import com.ssm.domain.Menu;
import com.ssm.service.MenuService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
@Service("menuService")
public class MenuServiceImpl implements MenuService {
	  @Resource
	private MenuDao menuDao;
	@Resource
	private Menu menu;
	public int getcount() {
		int count = menuDao.selectcount();
		return count;
	}

	public JSONObject selectAll(int page, int limit) {
		// 分页功能		
		int count = menuDao.selectcount(); // 查找数据条数
		int page_temp = page;
		int limit_temp = limit;
		System.out.println("数据条数"+count);
		if (count < page * limit) {
			limit = count - (page - 1) * limit;
		}
		page = (page_temp - 1) * limit_temp;
		List<List<Menu>> menu = menuDao.selectAll(page, limit);// 查找所有数据
		String json = "";  
        JsonConfig jsonConfig = new JsonConfig();  
        if(menu!=null){  
        json = JSONArray.fromObject(menu, jsonConfig).toString();  
        json = json.substring(1,json.length()-1);         
        System.out.println(json.toString());       
        }else{  
            json="[]";  
        }  
        String layjson = "{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":["+json+"]}";
          System.out.println(layjson);
        JSONObject jsonj = JSONObject.fromObject(layjson);
		return jsonj;
	}
	public void selectDel(String[] delmenu)
	{
		menuDao.delmenuByids(delmenu);
	}
	public void change(Map map,String iid,String menubariid)
	{	
		menu.setId((Integer)map.get("id"));
		menu.setMenubarid((Integer)map.get("menubarid"));
		menu.setName((String)map.get("name"));
		menu.setPrice((Double)map.get("price"));
		menu.setStatus((String)map.get("status"));
		menuDao.updateById(menu.getId(),menu.getMenubarid(),menu.getName(), menu.getPrice(), menu.getStatus(), Integer.valueOf(iid),Integer.valueOf(menubariid));
	}

	public void insert(Map map) {
		menu.setId((Integer)map.get("id"));
		menu.setMenubarid((Integer)map.get("menubarid"));
		menu.setName((String)map.get("name"));
		menu.setPrice((Double)map.get("price"));
		menu.setStatus((String)map.get("status"));	
		menuDao.insert(menu.getId(),menu.getMenubarid(),menu.getName(), menu.getPrice(), menu.getStatus());
		
	}
}
