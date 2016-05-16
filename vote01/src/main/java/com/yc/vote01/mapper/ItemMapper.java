package com.yc.vote01.mapper;

import com.yc.vote01.entity.Item;

public interface ItemMapper {
    int deleteByPrimaryKey(Long viid);

    int insert(Item record);

    int insertSelective(Item record);

    Item selectByPrimaryKey(Long viid);

    int updateByPrimaryKeySelective(Item record);

    int updateByPrimaryKey(Item record);
}