package com.microservices.controller.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import com.microservices.controller.bean.ExchangeValue;

@ControllerAdvice
public class CurrencyExchangeExceptionHandler extends ResponseEntityExceptionHandler {

	@ExceptionHandler(value = NoConversionRateFoundException.class)	
	public ResponseEntity<ExchangeValue> getErrorForFetchingCurrencyConversion(){
		
		ExchangeValue exchangeValue = new ExchangeValue();
		
		return new ResponseEntity<ExchangeValue>(exchangeValue,HttpStatus.NOT_FOUND);
		
	}
	
}
