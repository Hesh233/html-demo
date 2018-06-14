package com.ssm.domain;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository("menubar")
public class Menubar  {
    private String menuname;

    private Integer id;
    
    private List<Menu> memuList=new ArrayList<Menu>(); 
    
    private Integer shopid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getShopid() {
        return shopid;
    }

    public void setShopid(Integer shopid) {
        this.shopid = shopid;
    }
    
    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname == null ? null : menuname.trim();
    }
    public Menubar()
    {}
    public Menubar(String menuname,int id,int shopid)
    {
    	super();
    	this.menuname=menuname;
    	this.id=id;
    	this.shopid=shopid;
    }
    @Override  
    public String toString() {  
        return "Menubar [menuname=" + menuname + ", id=" + id + ", shopid=" + shopid + "]";  
    }  
}