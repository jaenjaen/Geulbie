package com.dinopia.geulbie.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dinopia.geulbie.domain.User;

public interface UserDAO {
	
	List<User> getAlluser() throws Exception;
	User getUser(int userIndex) throws Exception;
	int registerUser(User user) throws Exception;
	int deleteUser(int userIndex) throws Exception;
	int updateUser(User user) throws Exception;
	
}
