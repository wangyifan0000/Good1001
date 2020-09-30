package com.kgc.tcmp077.wangyf.service;

import com.kgc.tcmp077.wangyf.entity.goods;

import java.util.List;

/**
 * @author wangyf
 * @create 2020-09-29 22:46
 */
public interface GoodService {
    //根据区域查询
    List<goods> selectByGoodsDistrict(Integer District);
    //修改回显
    goods selectByPrimary(Integer id);
    //修改
    int updateGood(goods goods);

}
