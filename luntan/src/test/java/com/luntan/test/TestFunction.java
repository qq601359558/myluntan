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
@RunWith(SpringJUnit4ClassRunner.class) //��ʾ�̳���SpringJUnit4ClassRunner ��
@ContextConfiguration(locations={"classpath*:com.luntan.config.spring-mybatis.xml"})
public class TestFunction {
	//��ȡ log ���󣬲���Ҫ��ӡ��־����
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
