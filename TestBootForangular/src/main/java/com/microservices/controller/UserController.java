package com.microservices.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.microservices.bean.CustomBean;
import com.microservices.bean.UserDetail;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import springfox.documentation.annotations.ApiIgnore;

@RestController
public class UserController {

	
	@ApiOperation(httpMethod = "POST" ,value="users",produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE )
//	@ApiImplicitParams({
//		@ApiImplicitParam(name="name" ,value="User details to be created", required = true, dataType = "String", paramType = "body" ),
//		@ApiImplicitParam(name="age" ,value="User details to be created", required = true, dataType = "integer", paramType = "body" ),
//		@ApiImplicitParam(name="address" ,value="User details to be created", required = true, dataType = "String", paramType = "body" )		
//	})
//	

	@PostMapping(value = "/users",produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)	
	@ApiResponses({
		@ApiResponse(code = 201, message ="Created",response = UserDetail.class),
		@ApiResponse(code = 500, message ="Error",response = UserDetail.class),
		@ApiResponse(code = 401, message ="Unauthorized",response = UserDetail.class)
	})
	public ResponseEntity<UserDetail> createUser(@RequestBody UserDetail userDetail, @RequestHeader HttpHeaders header){
//		user.setUserId(Math.random());	
		return new ResponseEntity<UserDetail>(userDetail,HttpStatus.CREATED);		
	}
	
	@GetMapping(path = "/users/{id}")
	public ResponseEntity<List<UserDetail>> getUserById(@PathVariable(value = "id") int id){
//		user.setUserId(Math.random());	
		
		List<UserDetail>  listUsers = new ArrayList<UserDetail>();
		UserDetail userDetail1 = new UserDetail();
		userDetail1.setName("mithun");
		UserDetail userDetail2 = new UserDetail();
		userDetail1.setName("mohan");
		listUsers.add(userDetail1);
		listUsers.add(userDetail2);
		return new ResponseEntity<List<UserDetail>>(listUsers,HttpStatus.OK);		
	}
	


	@PostMapping(value ="/users1",produces = MediaType.APPLICATION_JSON_VALUE, consumes = "application/vnd+hal" )	
	@ApiResponses({
		@ApiResponse(code = 201, message ="Created",response = UserDetail.class),
		@ApiResponse(code = 500, message ="Error",response = UserDetail.class),
		@ApiResponse(code = 401, message ="Unauthorized",response = UserDetail.class)
	})
	public ResponseEntity<UserDetail> create1User1(@RequestBody UserDetail userDetail){
//		user.setUserId(Math.random());	
		return new ResponseEntity<UserDetail>(userDetail,HttpStatus.CREATED);		
	}
	
	@PostMapping(value="/upload", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public String upload(@RequestParam("file") MultipartFile file, @RequestBody UserDetail userDetail){
//		user.setUserId(Math.random());	
		try {
			file.getBytes();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "upload";		
	}
}
