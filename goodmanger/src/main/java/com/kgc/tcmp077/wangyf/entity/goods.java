package com.kgc.tcmp077.wangyf.entity;

import java.util.Date;

public class goods {
    private Long id;

    private String goodsname;

    private Integer billstatus;

    private Integer goodsdistrict;

    private Float goodsprice;

    private Long goodscount;

    private Date creationtime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname == null ? null : goodsname.trim();
    }

    public Integer getBillstatus() {
        return billstatus;
    }

    public void setBillstatus(Integer billstatus) {
        this.billstatus = billstatus;
    }

    public Integer getGoodsdistrict() {
        return goodsdistrict;
    }

    public void setGoodsdistrict(Integer goodsdistrict) {
        this.goodsdistrict = goodsdistrict;
    }

    public Float getGoodsprice() {
        return goodsprice;
    }

    public void setGoodsprice(Float goodsprice) {
        this.goodsprice = goodsprice;
    }

    public Long getGoodscount() {
        return goodscount;
    }

    public void setGoodscount(Long goodscount) {
        this.goodscount = goodscount;
    }

    public Date getCreationtime() {
        return creationtime;
    }

    public void setCreationtime(Date creationtime) {
        this.creationtime = creationtime;
    }
}