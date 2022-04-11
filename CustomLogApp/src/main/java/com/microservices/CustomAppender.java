package com.microservices;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.AppenderBase;

public class CustomAppender extends AppenderBase<ILoggingEvent>{

	private ConcurrentMap<String, ILoggingEvent> eventMap = new ConcurrentHashMap<>();
	
	@Override
	protected void append(ILoggingEvent eventObject) {
		eventMap.put(System.currentTimeMillis()+"", eventObject);
		
	}
	
	public Map<String, ILoggingEvent> getEventMap() {
        return eventMap;
    }

}
