package com.dinopia.geulbie;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.dinopia.geulbie.domain.User;

@SpringBootTest
class UserTests {

	@Autowired
	private SqlSession session;
	private String NS = "UserMapper.";
	
	
	@Test
	void contextLoads() {
		
//		List<User> userList = session.selectList(NS+"getUser");
//		for(User u: userList) {
//			System.out.println(u);
//		}
//		
//		User u = session.selectOne(NS+"getUser",1);
//		System.out.println(u);
	}

}
