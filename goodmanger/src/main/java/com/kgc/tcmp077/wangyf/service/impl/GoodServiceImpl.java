package com.kgc.tcmp077.wangyf.service.impl;

import com.kgc.tcmp077.wangyf.entity.goods;
import com.kgc.tcmp077.wangyf.entity.goodsExample;
import com.kgc.tcmp077.wangyf.mapper.goodsMapper;
import com.kgc.tcmp077.wangyf.service.GoodService;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author wangyf
 * @create 2020-09-29 22:48
 */
@Service("goodservice")
public class GoodServiceImpl implements GoodService {
    @Resource
    goodsMapper goodsMapper;
    @Override
    public List<goods> selectByGoodsDistrict(Integer District) {
        goodsExample example = new goodsExample();
        goodsExample.Criteria criteria = example.createCriteria();
        if(District!=null){
            criteria.andGoodsdistrictEqualTo(District);
        }
        List<goods> goods = goodsMapper.selectByExample(example);
        return goods;
    }

    @Override
    public goods selectByPrimary(Integer id) {
        goods goods = goodsMapper.selectByPrimaryKey((long) id);
        return goods;
    }

    @Override
    public int updateGood(goods goods) {
        int i = goodsMapper.updateByPrimaryKeySelective(goods);
        return i;
    }
}
