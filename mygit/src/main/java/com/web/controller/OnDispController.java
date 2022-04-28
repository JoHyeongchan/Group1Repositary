package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OnDispController {

	@RequestMapping(value="/on_content.do",method=RequestMethod.GET)
	public String onContent() {
		return "/onlinedisp/on_content";
	}
	
	@RequestMapping(value="/on_show.do",method=RequestMethod.GET)
	public String onShow() {
		return "/onlinedisp/on_show";
	}
}
