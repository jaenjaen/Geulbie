package com.dinopia.geulbie.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dinopia.geulbie.dao.UserDAO;
import com.dinopia.geulbie.domain.User;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SqlSession session;
	private String NS = "UserMapper.";
	
	@Override
	public List<User> getAlluser() throws Exception {
		return session.selectList(NS+"getUser");
	}

	@Override
	public User getUser(int userIndex) throws Exception {
		return session.selectOne(NS+"getUser",userIndex);
	}

	@Override
	public int registerUser(User user) throws Exception {
		return session.insert(NS+"registerUser",user);
	}

	@Override
	public int deleteUser(int userIndex) throws Exception {
		return session.delete(NS+"deleteUser",userIndex);
	}

	@Override
	public int updateUser(User user) throws Exception {
		return session.update(NS+"updateUser",user);
	}

}
