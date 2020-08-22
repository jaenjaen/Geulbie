package com.dinopia.geulbie.service;

import java.util.List;

import com.dinopia.geulbie.domain.User;

public interface UserService {
	List<User> getAlluser() throws Exception;
	User getUser(int userIndex) throws Exception;
	int registerUser(User user) throws Exception;
	int deleteUser(int userIndex) throws Exception;
	int updateUser(User user) throws Exception;
}
