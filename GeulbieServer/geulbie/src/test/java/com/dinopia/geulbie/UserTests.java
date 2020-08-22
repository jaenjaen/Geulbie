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
				
//		User u = session.selectOne(NS+"getUser",1);
//		System.out.println(u);
//		
//		User u = new User();
//		u.setUserIndex(2);
//		u.setApiIndex(1);
//		u.setUserNickname("샘플");
//		u.setUserAccount("sample@gmail.com");
//		u.setUserApiKey("ssnrkdldmldlTtmqslRK");
//		u.setUserImg("sample.png");
//		u.setUserNickname("이재은");
//		u.setRemoveAd(1);
//		u.setUserBerry(10);
//		
//		session.insert(NS+"registerUser",u);
		
//		session.delete(NS+"deleteUser",5);
//		session.delete(NS+"deleteUser",6);
		
//		session.update(NS+"updateUser",u);
		
//		List<User> userList = session.selectList(NS+"getUser");
//		for(User user: userList) {
//			System.out.println(user);
//		}
		
	}

}
