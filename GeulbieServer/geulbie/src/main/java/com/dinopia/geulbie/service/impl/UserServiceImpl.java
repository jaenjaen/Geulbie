package com.dinopia.geulbie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dinopia.geulbie.dao.UserDAO;
import com.dinopia.geulbie.domain.User;
import com.dinopia.geulbie.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDao;
	
	@Override
	public List<User> getAlluser() throws Exception {
		return userDao.getAlluser();
	}

	@Override
	public User getUser(int userIndex) throws Exception {
		return userDao.getUser(userIndex);
	}

	@Override
	public int registerUser(User user) throws Exception {
		return userDao.registerUser(user);
	}

	@Override
	public int deleteUser(int userIndex) throws Exception {
		return userDao.deleteUser(userIndex);
	}

	@Override
	public int updateUser(User user) throws Exception {
		return userDao.updateUser(user);
	}

}
