package com.microservices.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {

	
	@ExceptionHandler(HttpMessageNotReadableException.class)
	public ResponseEntity<Error> getMessageNoteConvertable(HttpServletRequest request, HttpMessageNotReadableException exception){
		Error err= new Error();
		err.setMessage("The data sent is not valid");
		err.setType(HttpStatus.INTERNAL_SERVER_ERROR.toString());
		return new ResponseEntity<Error>(err,HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	
	
	class Error {
		String message;
		String type;
		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		
	}
}
