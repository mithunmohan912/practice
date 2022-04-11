package com.abc.demostreams;

import org.apache.kafka.common.serialization.Serializer;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonPOJOSerializer<T> implements Serializer<T> {
    private ObjectMapper objectMapper = new ObjectMapper();

    private Class<T> tClass;

    /**
     * Default constructor needed by Kafka
     */
    public JsonPOJOSerializer() {
    }


    @Override
    public void close() {

    }



	@Override
	public byte[] serialize(String topic, T data) {
		
		// TODO Auto-generated method stub
		try {
			return objectMapper.writeValueAsBytes(data);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}

