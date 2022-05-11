package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.vo.NoticeVO;

@Controller
public class NoticeController {

	@RequestMapping(value="/notice_list.do",method=RequestMethod.GET)
	public String noticeList() {
		return "/notice/notice_list";
	}
	
	@RequestMapping(value="/notice_content.do",method=RequestMethod.GET)
	public String noticeContent() {
		return "/notice/notice_content";
	}
	
	@RequestMapping(value="/notice_write.do",method=RequestMethod.GET)
	public String noticeWrite() {
		return "/notice/notice_write";
	}
	
	@RequestMapping(value="/notice_write.do",method=RequestMethod.POST)
	public ModelAndView noticeWrite(NoticeVO vo) {
		ModelAndView mv=new ModelAndView();
		
		System.out.println(vo.getnTitle());
		System.out.println(vo.getFormFile().getOriginalFilename());
		System.out.println(vo.getnCategory());
		System.out.println(vo.getnContent());
		
		mv.setViewName("redirect: /mygit/notice_list.do");
		return mv;
	}
	
	@RequestMapping(value="/notice_update.do",method=RequestMethod.GET)
	public String noticeUpdate() {
		return "/notice/notice_update";
	}
	
	@RequestMapping(value="/notice_update.do",method=RequestMethod.POST)
	public ModelAndView noticeUpdate(NoticeVO vo) {
		ModelAndView mv=new ModelAndView();
		
		System.out.println(vo.getnTitle());
		System.out.println(vo.getFormFile().getOriginalFilename());
		System.out.println(vo.getnCategory());
		System.out.println(vo.getnContent());
		
		mv.setViewName("redirect: /mygit/notice_list.do");
		return mv;
	}
}
