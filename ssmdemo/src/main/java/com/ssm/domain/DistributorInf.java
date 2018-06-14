package com.ssm.domain;

import org.springframework.stereotype.Repository;

@Repository("distributorInf")
public class DistributorInf {
    private Integer id;

    private Integer userid;

    private String name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}