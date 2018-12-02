package com.wjw.manager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * SpringBoot�����ࡣ
 * ��Ĭ��ɨ�赱ǰ���͵�ǰ�����Ӱ���ע�⡣�����Ҫɨ����������ע����Ҫ���@ComponentScanע��
 * @author wujw5
 *
 */
@ComponentScan("com.wjw.manager.controller")	//���֮��Ḳ��Ĭ�ϵĵ�ǰ������ǰ�����Ӱ�
@SpringBootApplication
public class Starter {
	
	public static void main(String[] args) {
		
		SpringApplication.run(Starter.class);
	}

}
