package configuration;

import java.util.Properties;
import java.util.concurrent.ExecutionException;

import org.apache.kafka.clients.admin.AdminClient;
import org.apache.kafka.clients.admin.AdminClientConfig;
import org.apache.kafka.clients.admin.NewTopic;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.kafka.config.TopicBuilder;

@Configuration
public class TopicConfiguration {

	  @Value(value = "${spring.kafka.consumer.bootstrap-servers}")
	    private String bootstrapAddress;
	 
	    @Value(value = "${general.topic.name}")
	    private String topicName;
	 
	    @Value(value = "${spring.kafka.transaction-topic-name}")
	    private String userTopicName;
	 
	    @Bean
	    public NewTopic userTopic() {
	    	 Properties config = new Properties();
	         config.put(AdminClientConfig.BOOTSTRAP_SERVERS_CONFIG, bootstrapAddress);
	         AdminClient admin = AdminClient.create(config);
	        boolean isTopicPresent= false;
			try {
				isTopicPresent = admin.listTopics().names().get().stream().anyMatch(data -> data.equals(userTopicName));
			} catch (InterruptedException | ExecutionException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	if(!isTopicPresent) {
	    		TopicBuilder.name(topicName).partitions(3).replicas(2).build();
	    	}
	    	admin.close();
	    	return null;
	    }
	    
}
