package com.ssm.service;


import java.util.Map;


import net.sf.json.JSONObject;

public interface MenuService {
    public JSONObject selectAll(int page,int limit);
    public int getcount();
    public void selectDel(String[] delmenu);
    public void change(Map map,String iid,String menubariid);
	public void insert(Map map);
}
