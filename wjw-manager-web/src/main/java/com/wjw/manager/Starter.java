package com.wjw.manager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.DispatcherServlet;

import ch.qos.logback.core.net.server.ServerListener;

/**
 * SpringBootࡣ
 * 
 * @author wujw5
 *
 */
@ComponentScan("com.wjw.manager")	
@SpringBootApplication
public class Starter {
	
	public static void main(String[] args) {
		
		SpringApplication.run(Starter.class);
	}
	
	@Bean
	public ServletRegistrationBean sevletRegistrationBean(DispatcherServlet dispatcherServlet){
		
		ServletRegistrationBean<DispatcherServlet> servletServletRegistrationBean = new ServletRegistrationBean<>(dispatcherServlet);
        servletServletRegistrationBean.addUrlMappings("*.do");
        return servletServletRegistrationBean;	
	}
}
