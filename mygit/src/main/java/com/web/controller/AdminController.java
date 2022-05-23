package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	@RequestMapping(value="/admin.do",method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	
	@RequestMapping(value="/admin/onwrite.do",method=RequestMethod.GET)
	public String adminOnWrite() {
		return "/admin/onlinedisp/admin_on_write";
	}
}
