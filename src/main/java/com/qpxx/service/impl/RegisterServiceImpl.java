package com.qpxx.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qpxx.dao.UserBaseMapper;
import com.qpxx.model.UserBase;
import com.qpxx.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	private UserBaseMapper userBaseMapper;
	
	@Override
	public void createUserBase(UserBase userBase) {
		
		userBaseMapper.insertSelective(userBase);
	}

}
