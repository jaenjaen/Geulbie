package com.dinopia.geulbie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	@GetMapping("/user/{userIndex}")
	public ResponseEntity getUser(@PathVariable int userIndex) { 
		try {
			User user= userService.getUser(userIndex);
			return new ResponseEntity(user,HttpStatus.OK);
		} catch (Exception e) {
			//e.printStackTrace();
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
	}
	
	@PostMapping("/user")
	public ResponseEntity registerUser(@RequestBody User user) { 
		try {
			userService.registerUser(user);
			return new ResponseEntity(HttpStatus.OK);
		} catch (Exception e) {
			//e.printStackTrace();
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
	}
	
	@DeleteMapping("/user/{userIndex}")
	public ResponseEntity deleteUser(@PathVariable int userIndex) { 
		try {
			userService.deleteUser(userIndex);
			return new ResponseEntity(HttpStatus.OK);
		} catch (Exception e) {
			//e.printStackTrace();
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
	}
	
	@PutMapping("/user")
	public ResponseEntity updateUser(@RequestBody User user) { 
		try {
			userService.updateUser(user);
			return new ResponseEntity(HttpStatus.OK);
		} catch (Exception e) {
			//e.printStackTrace();
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
	}
	
}
