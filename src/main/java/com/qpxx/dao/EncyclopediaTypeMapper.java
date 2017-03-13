package com.qpxx.dao;

import java.util.List;

import com.qpxx.model.Encyclopedia;
import com.qpxx.model.EncyclopediaType;

public interface EncyclopediaTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(EncyclopediaType record);

    int insertSelective(EncyclopediaType record);

    EncyclopediaType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(EncyclopediaType record);

    int updateByPrimaryKey(EncyclopediaType record);

	List<EncyclopediaType> getEncyclopediaType();

}