package com.luntan.base.web;


import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.luntan.base.bo.LoginInfo;
import com.luntan.base.bo.User;
import com.luntan.base.service.IBaseService;

@Controller
public class LoginWeb implements ILoginWeb {
	private static Logger logger=Logger.getLogger(LoginWeb.class);
	@Resource
	private IBaseService baseService;
	@RequestMapping("login.so")
	public String login(LoginInfo loginInfo) {
		LoginInfo info=baseService.login(loginInfo);
		if(info!=null){
			return "base/mainPage";
		}else{
			return  "error";
		}
		
	}
	
	@RequestMapping("getCateg.so")
	@ResponseBody
	public String getCateg(){
		String str=baseService.getCateg();
		return str;
	}

}
