package com.luntan.test;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.apache.log4j.chainsaw.Main;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.luntan.base.bo.User;
import com.luntan.base.service.IBaseService;
@RunWith(SpringJUnit4ClassRunner.class) //表示继承了SpringJUnit4ClassRunner 类
@ContextConfiguration(locations={"classpath:spring-mybatis.xml"})
public class TestFunction {
	//获取 log 对象，并绑定要打印日志的类
	private static Logger logger = Logger.getLogger(TestFunction.class);
	@Resource
	private IBaseService baseService=null;
	@Test
	public void test(){
	//User user=baseService.getUserById(1);
		System.out.println(111);
		String str=baseService.getCateg();
		System.out.println(str);
		
	logger.info(str);
	}
	
	
}
