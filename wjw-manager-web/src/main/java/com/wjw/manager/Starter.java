package com.wjw.manager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * SpringBootࡣ
 * 
 * @author wujw5
 *
 */
@ComponentScan("com.wjw.manager.controller")	
@SpringBootApplication
public class Starter {
	
	public static void main(String[] args) {
		
		SpringApplication.run(Starter.class);
	}

}
