package com.qpxx.dao;

import com.qpxx.model.InfoCategory;

public interface InfoCategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InfoCategory record);

    int insertSelective(InfoCategory record);

    InfoCategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InfoCategory record);

    int updateByPrimaryKey(InfoCategory record);
}