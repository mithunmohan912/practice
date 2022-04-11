package com.hibernate.config;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;

@Configuration
public class AppConfiguration {

	@Bean
	public DataSource getDataSource() {
		
		DriverManagerDataSource source = new DriverManagerDataSource();
		source.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		source.setUrl("jdbc:oracle:thin:@localhost:1521:orcl");
		source.setUsername("system");
		source.setPassword("Pass1234");
		
		return source;
		
	}
	
	
	public Properties additionPros() {
		Properties prop = new Properties();
		prop.put("hibernate.hbm2ddl.auto", "update");
		prop.put("hibernate.dialect", "org.hibernate.dialect.Oracle10gDialect");
		prop.put("spring.jpa.show-sql", true);
		
		return prop;		
	}
	
	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
		LocalContainerEntityManagerFactoryBean  bean = new LocalContainerEntityManagerFactoryBean ();
		bean.setDataSource(getDataSource());
		bean.setPackagesToScan(new String[] { "com.hibernate.bean" });
		JpaVendorAdapter adap = new HibernateJpaVendorAdapter();	
		bean.setJpaVendorAdapter(adap);
		bean.setJpaProperties(additionPros());
		return bean;
	}
	
	
//	@Bean("entityManagerFactory")
//	public EntityManagerFactory getEMManagerFac() {
//		return getEntityManager().getObject();
//	}
	
	@Bean
	public JpaTransactionManager getTransactionManager() {
		JpaTransactionManager mang= new JpaTransactionManager();
		mang.setEntityManagerFactory(entityManagerFactory().getObject());
		return mang;
	}
	
	
	
	
}
