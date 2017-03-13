package com.qpxx.dao;

import com.qpxx.model.InfoContent;

public interface InfoContentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InfoContent record);

    int insertSelective(InfoContent record);

    InfoContent selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InfoContent record);

    int updateByPrimaryKey(InfoContent record);
}