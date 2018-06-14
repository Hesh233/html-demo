package com.ssm.domain;

import java.math.BigDecimal;

import org.springframework.stereotype.Repository;
@Repository("order")
public class Order extends OrderKey {
    private String status;

    private BigDecimal payprice;

    private String isreturnpay;

    private String ispay;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public BigDecimal getPayprice() {
        return payprice;
    }

    public void setPayprice(BigDecimal payprice) {
        this.payprice = payprice;
    }

    public String getIsreturnpay() {
        return isreturnpay;
    }

    public void setIsreturnpay(String isreturnpay) {
        this.isreturnpay = isreturnpay == null ? null : isreturnpay.trim();
    }

    public String getIspay() {
        return ispay;
    }

    public void setIspay(String ispay) {
        this.ispay = ispay == null ? null : ispay.trim();
    }
}