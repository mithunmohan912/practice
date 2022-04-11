package service;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.Headers;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.stereotype.Service;

@Service
public class KafkaConsumerService {
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
    @Value(value = "${spring.kafka.trasnaction-group-id}")
    private String userGroupId;	 
    
    @Value(value = "${spring.kafka.transaction-topic-name}")
    private String userTopicName;
	
	@KafkaListener(groupId = "transactiongroup",topicPattern= "testmitTransaction" ,containerFactory = "getConsumserListener")
	public void getData(Object record) {
		logger.debug(""+record);
		logger.info("record:"+record);
		
	}
	
//	@KafkaListener(groupId = "${spring.kafka.trasnaction-group-id}",topicPattern = "${spring.kafka.transaction-topic-name}" ,containerFactory = "getConsumserListener")
//	public void getData(Object record) {
//		logger.info(""+record);
//		
//		
//	}

}
