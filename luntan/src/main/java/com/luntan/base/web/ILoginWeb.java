package com.luntan.base.web;
import com.luntan.base.bo.LoginInfo;

public interface ILoginWeb {
	/**��¼*/
	public String login(LoginInfo loginInfo);
	/**��ȡ��̳���*/
	public String getCateg();
}
