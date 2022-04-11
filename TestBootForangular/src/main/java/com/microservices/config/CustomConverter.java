package com.microservices.config;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.nio.charset.Charset;
import java.util.List;

import org.springframework.http.HttpInputMessage;
import org.springframework.http.HttpOutputMessage;
import org.springframework.http.MediaType;
import org.springframework.http.converter.AbstractHttpMessageConverter;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.http.converter.HttpMessageNotWritableException;
import org.springframework.util.SerializationUtils;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.microservices.bean.CustomBean;
import com.microservices.bean.UserDetail;

public class CustomConverter extends AbstractHttpMessageConverter<Object> {

	@Override
	public void setSupportedMediaTypes(List<MediaType> supportedMediaTypes) {
		// TODO Auto-generated method stub
//		supportedMediaTypes.add(new MediaType("application", "vnd+hal"));
		super.setSupportedMediaTypes(supportedMediaTypes);
	}
	public CustomConverter() {
		super(new MediaType("application", "vnd+hal"), new MediaType("application", "json"));
		// TODO Auto-generated constructor stub
	}

	@Override
	protected boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		if(clazz.equals(UserDetail.class)) {
		return true;
		}else {
			return false;
		}
	}

	@Override
	protected Object readInternal(Class<? extends Object> clazz, HttpInputMessage inputMessage)
			throws IOException, HttpMessageNotReadableException {
		// TODO Auto-generated method stub
		
		ObjectMapper mapp =new ObjectMapper();
		BufferedInputStream bis = new BufferedInputStream(inputMessage.getBody());
		
		 ByteArrayOutputStream baos = new ByteArrayOutputStream();
		    InputStream in = inputMessage.getBody();
		    byte[] buf = new byte[1024];
		    for (;;) {
		        int len = in.read(buf);
		        if (len == -1) {
		            break;
		        }
		        if (len > 0) {
		            baos.write(buf, 0, len);
		        }
		    }
		    byte[] bytes = baos.toByteArray();
		    SerializationUtils.deserialize(bytes);
		    
//		    return JSON.parseObject(bytes, 0, bytes.length, charset.newDecoder(), clazz);
		    
//		try {
//			bis.
//			ois.readObject();
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		String data = mapp.writeValueAsString(inputMessage.getBody());
		return mapp.readValue(data, CustomBean.class);
//		return null;
	}

	@Override
	protected void writeInternal(Object t, HttpOutputMessage outputMessage)
			throws IOException, HttpMessageNotWritableException {
		// TODO Auto-generated method stub
		
		System.out.println();
		
	}

}
