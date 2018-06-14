package com.ssm.domain;

import org.springframework.stereotype.Repository;

@Repository("orderKey")
public class OrderKey {
    private Integer id;

    private Integer orderId;

    private Integer shopInfid;

    private Integer costomerInfid;

    private Integer distributorInfid;

    private Integer menuid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getShopInfid() {
        return shopInfid;
    }

    public void setShopInfid(Integer shopInfid) {
        this.shopInfid = shopInfid;
    }

    public Integer getCostomerInfid() {
        return costomerInfid;
    }

    public void setCostomerInfid(Integer costomerInfid) {
        this.costomerInfid = costomerInfid;
    }

    public Integer getDistributorInfid() {
        return distributorInfid;
    }

    public void setDistributorInfid(Integer distributorInfid) {
        this.distributorInfid = distributorInfid;
    }

    public Integer getMenuid() {
        return menuid;
    }

    public void setMenuid(Integer menuid) {
        this.menuid = menuid;
    }
}