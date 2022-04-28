package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
	
	@RequestMapping(value="/id.do", method=RequestMethod.GET)
	public String id() {
		return "/login/id";
	}
	
	@RequestMapping(value="/id_fail.do", method=RequestMethod.GET)
	public String idFail() {
		return "/login/id_fail";
	}
	
	@RequestMapping(value="/id_succ.do", method=RequestMethod.GET)
	public String idSucc() {
		return "/login/id_succ";
	}
	
	@RequestMapping(value="/pass.do", method=RequestMethod.GET)
	public String pass() {
		return "/login/pass";
	}
	
	@RequestMapping(value="/pass_fail.do", method=RequestMethod.GET)
	public String passFail() {
		return "/login/pass_fail";
	}
	
	@RequestMapping(value="/pass_succ.do", method=RequestMethod.GET)
	public String passSucc() {
		return "/login/pass_succ";
	}
}
