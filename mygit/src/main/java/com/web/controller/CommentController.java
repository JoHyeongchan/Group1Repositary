package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.vo.CommentVO;

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
		return "/comment/comment_write";
	}
	
	@RequestMapping(value="/comment_write.do",method=RequestMethod.POST)
	public ModelAndView commentWrite(CommentVO vo){
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("redirect: /mygit/comment/comment_list");		
		return  mv;
	}
	
	@RequestMapping(value="/comment_update.do",method=RequestMethod.GET)
	public String commentUpdate(){
		return "/comment/comment_update";
	}
	
	@RequestMapping(value="/comment_update.do",method=RequestMethod.POST)
	public ModelAndView commentUpdate(CommentVO vo){
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("redirect: /mygit/comment/comment_list");		
		return  mv;
	}
}
