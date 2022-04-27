package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QnaController {

	@RequestMapping(value="/qna_list.do",method = RequestMethod.GET)
	public String qnaList() {
		return "/qna/qna_list";
	}
	
	@RequestMapping(value="/qna_write.do",method = RequestMethod.GET)
	public String qnaWrite() {
		return "/qna/qna_write";
	}
	
	@RequestMapping(value="/qna_content.do",method = RequestMethod.GET)
	public String qnaContent() {
		return "/qna/qna_content";
	}
}
