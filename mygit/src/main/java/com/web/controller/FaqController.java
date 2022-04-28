package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FaqController {

	@RequestMapping(value="/faq_list.do",method=RequestMethod.GET)
	public String faqList() {
		return "/faq/faq_list";
	}
	
	@RequestMapping(value="/faq_write.do",method=RequestMethod.GET)
	public String faqWrite() {
		return "/faq/faq_write";
	}
	
	@RequestMapping(value="/faq_update.do",method=RequestMethod.GET)
	public String faqUpdate() {
		return "/faq/faq_write";
	}
}
