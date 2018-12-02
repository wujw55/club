package com.wjw.manager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * SpringBoot启动类。
 * 会默认扫描当前包和当前包的子包的注解。如果需要扫描其他包的注解需要添加@ComponentScan注解
 * @author wujw5
 *
 */
@ComponentScan("com.wjw.manager.controller")	//添加之后会覆盖默认的当前包及当前包的子包
@SpringBootApplication
public class Starter {
	
	public static void main(String[] args) {
		
		SpringApplication.run(Starter.class);
	}

}
