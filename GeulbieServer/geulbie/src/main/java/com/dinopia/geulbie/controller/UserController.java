package com.dinopia.geulbie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dinopia.geulbie.domain.User;
import com.dinopia.geulbie.service.UserService;

@RestController
@CrossOrigin(origins ="*",maxAge = 60000) //추후 변경 필요
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/user")
	public ResponseEntity getAlluser() {
		try {
			List<User> userList= userService.getAlluser();
			return new ResponseEntity(userList,HttpStatus.OK);
		} catch (Exception e) {
			//e.printStackTrace();
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
	}
}
