package service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.SendResult;
import org.springframework.stereotype.Service;
import org.springframework.util.concurrent.ListenableFuture;
import org.springframework.util.concurrent.ListenableFutureCallback;

@Service
public class KafkaProducerService {

	@Autowired
	public KafkaTemplate<String, Object> userKafkaTemplate;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Value(value = "${spring.kafka.transaction-topic-name}")
    private String userTopicName;
	
	
	public void sendTransactionMessage(Object data) {
		
		ListenableFuture<SendResult<String, Object>> obj = this.userKafkaTemplate.send(userTopicName,"paymentEvent", data);
		obj.addCallback(new ListenableFutureCallback<SendResult<String, Object>>() {

			@Override
			public void onSuccess(SendResult<String, Object> result) {
				// TODO Auto-generated method stub
				logger.info("succes");
				
			}

			@Override
			public void onFailure(Throwable ex) {
				// TODO Auto-generated method stub
				logger.info("failure");
			}
		});
	}
	
	
}
