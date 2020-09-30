package com.kgc.tcmp077.wangyf.mapper;

import com.kgc.tcmp077.wangyf.entity.goods;
import com.kgc.tcmp077.wangyf.entity.goodsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface goodsMapper {
    int countByExample(goodsExample example);

    int deleteByExample(goodsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(goods record);

    int insertSelective(goods record);

    List<goods> selectByExample(goodsExample example);

    goods selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") goods record, @Param("example") goodsExample example);

    int updateByExample(@Param("record") goods record, @Param("example") goodsExample example);

    int updateByPrimaryKeySelective(goods record);

    int updateByPrimaryKey(goods record);
}