package com.luntan.base.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.luntan.base.bo.User;
import com.luntan.base.dao.UserMapper;
@Service("baseServiceImpl")
public class BaseServiceImpl implements IBaseService {
	@Resource
	private  UserMapper userMapper;
	public User login(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

}
