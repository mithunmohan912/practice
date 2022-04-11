package com.microservices.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
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

@SpringBootTest
@AutoConfigureMockMvc
@ExtendWith(MockitoJUnitRunner.class)
public class UserControllerTest {
	
	@Autowired
	private MockMvc mvc;
	
	@MockBean
	private UserController cntroller;
	
	

//	@Test
//	public ResponseEntity<UserDetail> createUser(@RequestBody UserDetail userDetail, @RequestHeader HttpHeaders header){
////		user.setUserId(Math.random());	
//		return new ResponseEntity<UserDetail>(userDetail,HttpStatus.CREATED);		
//	}
//	
	
	@Test
	public void getUserById() throws Exception{
		
		List<UserDetail>  listUsers = new ArrayList<UserDetail>();
		UserDetail userDetail1 = new UserDetail();
		userDetail1.setName("mithun");
		UserDetail userDetail2 = new UserDetail();
		userDetail1.setName("mohan");
		listUsers.add(userDetail1);
		listUsers.add(userDetail2);
		
		Mockito.when(cntroller.getUserById(Mockito.anyInt())).thenReturn(new ResponseEntity<List<UserDetail>>(listUsers,HttpStatus.OK));
		ObjectMapper mapper = new ObjectMapper();
		String inputJson = mapper.writeValueAsString(listUsers);
		MvcResult result =  mvc.perform(MockMvcRequestBuilders.get("/users/1").accept(MediaType.APPLICATION_JSON)).andExpect(matcher)andReturn();
		
		int status = result.getResponse().getStatus();
		Assertions.assertEquals(status, 200);
		
		String str = result.getResponse().getContentAsString();
		Assertions.assertEquals(str, inputJson);
	}
	


//	public ResponseEntity<UserDetail> create1User1(@RequestBody UserDetail userDetail){
////		user.setUserId(Math.random());	
//		return new ResponseEntity<UserDetail>(userDetail,HttpStatus.CREATED);		
//	}
//	
//	@PostMapping(value="/upload", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
//	public String upload(@RequestParam("file") MultipartFile file, @RequestBody UserDetail userDetail){
////		user.setUserId(Math.random());	
//		try {
//			file.getBytes();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		return "upload";		
//	}
}
