package com.qpxx.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qpxx.model.UserBase;
import com.qpxx.service.RegisterService;
import com.qpxx.util.EncryptioMD5;

/**
 * 
 * @author liyq
 * @since  2017-03-04
 * 用户注册控制器
 *
 */
@Controller
@RequestMapping("register")
public class RegisterController {
	
	@Autowired
	private RegisterService registerService;
	
	
	/**
	 * 初始化注册页面
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("")
	public String list(HttpServletRequest request,Model model){
		UserBase userBase = new UserBase();
		model.addAttribute("userBase", userBase);
		model.addAttribute("flag", request.getParameter("flag"));
		return "/user/add";
	}
	
	
	/**
	 * 注册提交
	 * @param request
	 * @param model
	 * @param userBase
	 * @return
	 */
	@RequestMapping("save")
	public String save(HttpServletRequest request,Model model,@ModelAttribute("userBase") UserBase userBase){
		
		if(userBase.getLoginName()!=null && userBase.getPassword()!=null){
			if(!userBase.getLoginName().matches("^[a-zA-Z\\d]\\w{3,11}[a-zA-Z\\d]$")
					||!userBase.getPassword().matches("^[A-Za-z0-9\u4e00-\u9fa5]+$")){
				return "redirect:/register?method=&flag=1";
			}
		}
		String password = EncryptioMD5.encryptioMD5(userBase.getLoginName()+userBase.getPassword());
		userBase.setPassword(password);
		userBase.setRegisterTime(new Date());
		userBase.setStatus((byte)0);
		registerService.createUserBase(userBase);
		return "redirect:/register?method=&flag=2";
		
		
	}
	
	
	
	/**
	 * 校验用户名
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("checkUser")
	public String checkUser(HttpServletRequest request,HttpServletResponse response){
		 
		
		
		
		
		
		return "";
	}
}
