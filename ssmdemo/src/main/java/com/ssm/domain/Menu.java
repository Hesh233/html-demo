package com.ssm.domain;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.stereotype.Repository;
@Repository("menu")
public class Menu {

    private String name;

    private double price;

    private String status;

    private Integer id;

    private Integer menubarid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMenubarid() {
        return menubarid;
    }

    public void setMenubarid(Integer menubarid) {
        this.menubarid = menubarid;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Menu() {}
    public Menu(int id,String name,String status,double price,int menubarid)
    {
    	super();
    	this.name=name;
    	this.id=id;
    	this.menubarid=menubarid;
    	this.price=price;
    	this.status=status;
    }
    @Override  
    public String toString() {  
        return "Menu [name=" + name + ", id=" + id + ", price=" + price +  ", menubarid=" + menubarid +  ", status=" + status + "]";  
    }  
}