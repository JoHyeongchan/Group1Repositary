package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeController {

	@RequestMapping(value="/notice_list.do",method=RequestMethod.GET)
	public String noticeList() {
		return "/notice/notice_list";
	}
	
	@RequestMapping(value="/notice_content.do",method=RequestMethod.GET)
	public String noticeContent() {
		return "/notice/notice_list";
	}
	
	@RequestMapping(value="/notice_write.do",method=RequestMethod.GET)
	public String noticeWrite() {
		return "/notice/notice_write";
	}
}
