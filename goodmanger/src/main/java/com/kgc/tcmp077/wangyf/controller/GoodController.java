package com.kgc.tcmp077.wangyf.controller;

import com.kgc.tcmp077.wangyf.entity.goods;
import com.kgc.tcmp077.wangyf.service.GoodService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.jws.WebParam;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Date;
/**
 * @author wangyf
 * @create 2020-09-29 22:55
 */
@Controller
public class GoodController {
    @Resource
    GoodService goodService;
    @RequestMapping("/")
    public String toselectByDistrict(){
        return "selectByDistrict";
    }
    @RequestMapping("/selectByDistrict")
    public String doselectByDistrict(int GoodDistrict, Model model) {
        List<goods> goods = goodService.selectByGoodsDistrict(GoodDistrict);
        model.addAttribute("Goodslist",goods);
        return "main";
    }
    @RequestMapping("/updateSelectById/{id}")//回显
    public String toupdateSelectById(@PathVariable int id, Model model){
        goods goods = goodService.selectByPrimary(id);
        model.addAttribute("goods",goods);
        return "doUpdate";
    }
    @RequestMapping("/doupdateSelectById")
    public String doupdateSelectById(int id,Integer goodsDistrict,String creationtime,String goodsName,float goodsPrice,int goodsCount,int billStatus){
        goods goods = new goods();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        try {
            Date date=df.parse(creationtime);
            goods.setCreationtime(date);
        } catch (Exception e) {
            e.printStackTrace();
        }
        goods.setId((long) id);
        goods.setBillstatus(billStatus);
        goods.setGoodscount((long)goodsCount);
        goods.setGoodsprice(goodsPrice);
        goods.setGoodsname(goodsName);
        goods.setGoodsdistrict(goodsDistrict);
        int i = goodService.updateGood(goods);
        if(i>0){
            return "redirect:selectByDistrict";
        }else{
            return "doUpdate";
        }

    }
}
