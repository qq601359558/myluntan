package com.luntan.base.dao;

import com.luntan.base.bo.LoginInfo;
import com.luntan.base.bo.LoginInfoExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface ILoginDao {
	public LoginInfo getLogInfo(LoginInfo loginInfo);
	public List<Map<Integer,String>> getCateg();
}