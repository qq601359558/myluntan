package com.luntan.base.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.luntan.base.bo.User;
import com.luntan.base.dao.IUserDao;
@Service("baseService")
public class BaseServiceImpl implements IBaseService {
	@Resource
	private  IUserDao iUserDao;
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return this.iUserDao.selectByPrimaryKey(userId);
	}

}
