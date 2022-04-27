package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommentController {

	@RequestMapping(value="/comment_list.do",method=RequestMethod.GET)
	public String commentList(){
		return "/comment/comment_list";
	}
	
	@RequestMapping(value="/comment_content.do",method=RequestMethod.GET)
	public String commentContent(){
		return "/comment/comment_content";
	}
	
	@RequestMapping(value="/comment_write.do",method=RequestMethod.GET)
	public String commentWrite(){
		return "/comment/comment_content";
	}
}
