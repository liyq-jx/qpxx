package com.qpxx.service;

import java.util.List;

import com.qpxx.model.Encyclopedia;
import com.qpxx.model.EncyclopediaType;

/**
 * 
 * @author liyq
 * @since 2017-03-01
 * 
 */
public interface IndexService {
	
	/**
	 * ��ȡ����
	 * @return
	 */
	List<EncyclopediaType> getEncyclopediaType();

	List<Encyclopedia> getEncyclopedia();

}
