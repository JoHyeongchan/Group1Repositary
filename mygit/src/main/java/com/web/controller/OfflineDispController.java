package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OfflineDispController {

	@RequestMapping(value="/off_content_no.do",method=RequestMethod.GET)
	public String offContentNo() {
		return "/offlinedisp/off_content_no";
	}
	
	@RequestMapping(value="/off_future.do",method=RequestMethod.GET)
	public String offFuture() {
		return "/offlinedisp/off_future";
	}
	
	@RequestMapping(value="/off_now.do",method=RequestMethod.GET)
	public String offNow() {
		return "/offlinedisp/off_now";
	}
	
	@RequestMapping(value="/off_past.do",method=RequestMethod.GET)
	public String offPast() {
		return "/offlinedisp/off_past";
	}
}
