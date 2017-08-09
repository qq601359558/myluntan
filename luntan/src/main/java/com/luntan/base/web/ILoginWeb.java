package com.luntan.base.web;
import com.luntan.base.bo.LoginInfo;

public interface ILoginWeb {
	/**登录*/
	public String login(LoginInfo loginInfo);
	/**获取论坛类别*/
	public String getCateg();
}
