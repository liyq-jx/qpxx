package com.qpxx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qpxx.model.Encyclopedia;
import com.qpxx.model.EncyclopediaType;
import com.qpxx.service.IndexService;


/**
 * 
 * 项目首页控制器
 * @author liyq
 * @since 2017-03-03
 *
 */
@Controller
@RequestMapping("/")
public class IndexController {
	Logger logger = LogManager.getLogger(this.getClass().getSimpleName());
	
	@Autowired
	private IndexService indexService;
	
	@RequestMapping("")
	public String doGet(HttpServletRequest request,Model model){
		
		try {
			List<EncyclopediaType> encyclopediaTypes = indexService.getEncyclopediaType();
			model.addAttribute("encyclopediaTypes", encyclopediaTypes);
			
			List<Encyclopedia>  encyclopedias = indexService.getEncyclopedia();
			model.addAttribute("encyclopedias", encyclopedias);
			
			logger.info("加载成功!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/index";
	}
}
