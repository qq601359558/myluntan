package com.luntan.base.service;

import com.luntan.base.bo.LoginInfo;
import com.luntan.base.bo.User;

public interface IBaseService {
	public User getUserById(int userId);
	/**
	 * ��ȡ��¼�û� 
	 * @param IloginInfo
	 * */
	public LoginInfo login(LoginInfo loginInfo);
}
