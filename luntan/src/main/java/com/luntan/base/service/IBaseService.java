package com.luntan.base.service;

import com.luntan.base.bo.LoginInfo;
import com.luntan.base.bo.User;

public interface IBaseService {
	public User getUserById(int userId);
	/**
	 * 获取登录用户 
	 * @param IloginInfo
	 * */
	public LoginInfo login(LoginInfo loginInfo);
}
