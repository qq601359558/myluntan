package com.luntan.test;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.apache.log4j.chainsaw.Main;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.luntan.base.bo.Logininfo;
import com.luntan.base.webc.LoginImpl;
@RunWith(SpringJUnit4ClassRunner.class) //表示继承了SpringJUnit4ClassRunner 类
@ContextConfiguration(locations={"classpath*:com.luntan.config.spring-mybatis.xml"})
public class TestFunction {
	//获取 log 对象，并绑定要打印日志的类
	private static Logger logger = Logger.getLogger(Test.class);
	@Resource
	private LoginImpl loginImpl=null;
	@Test
	public void test(){
		Logininfo logininfo =new Logininfo();
		logininfo.setLoginName("admin");
		logininfo.setPassword("admin");
		loginImpl.login(logininfo);
	}
	
	
}
