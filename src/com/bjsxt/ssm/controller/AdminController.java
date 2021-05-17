package com.bjsxt.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	@RequestMapping("/index.do")
	public String index(){
		return "index" ;
	}
	
	
}
