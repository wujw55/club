package com.wjw.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PageController {
	
	@RequestMapping("/page")
	public String toPage(@RequestParam String pageName){
		return pageName;
		
	}

}
