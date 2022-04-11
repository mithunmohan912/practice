package Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.microservices.bean.Payment;

import service.KafkaProducerService;

@RestController
public class TransactionController {
	
	@Autowired
	private KafkaProducerService service;
	
	@Value("${general.topic.t1}")
	private String topicsname;
	@Value("${general.topic.name}")
	private String testtpNmae;
	
	@GetMapping(value="/payment", consumes = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Payment> resendPayment(){
		Payment payment = new Payment();
		payment.setAccountId(110110);
		payment.setTransactionId(12345676);
		service.sendTransactionMessage(payment);
		return new ResponseEntity<Payment>(HttpStatus.NO_CONTENT);		
	}

}
