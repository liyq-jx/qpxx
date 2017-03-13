package com.qpxx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qpxx.dao.EncyclopediaMapper;
import com.qpxx.dao.EncyclopediaTypeMapper;
import com.qpxx.model.Encyclopedia;
import com.qpxx.model.EncyclopediaType;
import com.qpxx.service.IndexService;

@Service
public class IndexServiceImpl implements IndexService{

	
	@Autowired
	private EncyclopediaTypeMapper encyclopediaTypeMapper;
	
	@Autowired
	private EncyclopediaMapper encyclopediaMapper;
	
	@Override
	public List<EncyclopediaType> getEncyclopediaType() {
			
		return encyclopediaTypeMapper.getEncyclopediaType();
	}

	@Override
	public List<Encyclopedia> getEncyclopedia() {
		return encyclopediaMapper.getEncyclopedia();
	}

}
