package com.qpxx.dao;

import java.util.List;

import com.qpxx.model.Encyclopedia;

public interface EncyclopediaMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Encyclopedia record);

    int insertSelective(Encyclopedia record);

    Encyclopedia selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Encyclopedia record);

    int updateByPrimaryKey(Encyclopedia record);

	List<Encyclopedia> getEncyclopedia();
}