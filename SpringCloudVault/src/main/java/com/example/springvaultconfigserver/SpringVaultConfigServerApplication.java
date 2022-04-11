package com.example.springvaultconfigserver;

import com.example.springvaultconfigserver.config.VaultConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;
import org.springframework.context.ConfigurableApplicationContext;

@EnableConfigServer
@SpringBootApplication
public class SpringVaultConfigServerApplication {

	public static void main(String[] args) {

		ConfigurableApplicationContext context = SpringApplication.run(SpringVaultConfigServerApplication.class, args);
		VaultConfiguration conf = context.getBean(VaultConfiguration.class);
		System.out.println("username >>>>>"+conf.getUsername());
		System.out.println("uri >>>>>"+conf.getUri());
	}

}
