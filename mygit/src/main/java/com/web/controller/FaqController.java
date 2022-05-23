package com.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.vo.FaqVO;

@Controller
public class FaqController {

	@RequestMapping(value="/faq_list.do",method=RequestMethod.GET)
	public ModelAndView faqList(HttpSession session) {
		ModelAndView mv=new ModelAndView("/faq/faq_list");
		String id=(String)session.getAttribute("id");
		mv.addObject("id", id);
		return mv;
	}
	
	@RequestMapping(value="/faq_write.do",method=RequestMethod.GET)
	public String faqWrite() {
		return "/faq/faq_write";
	}
	
	@RequestMapping(value="/faq_write.do",method=RequestMethod.POST)
	public ModelAndView faqWrite(FaqVO vo) {
		ModelAndView mv=new ModelAndView("redirect: /mygit/faq_list.do");
		System.out.println(vo.getFaTitle());
		System.out.println(vo.getFaCategory());
		System.out.println(vo.getFaContent());
		return mv;
	}
	
	@RequestMapping(value="/faq_update.do",method=RequestMethod.GET)
	public String faqUpdate() {
		return "/faq/faq_write";
	}
	
	@RequestMapping(value="/faq_update.do",method=RequestMethod.POST)
	public ModelAndView faqUpdate(FaqVO vo) {
		ModelAndView mv=new ModelAndView("redirect: /mygit/faq_list.do");
		System.out.println(vo.getFaTitle());
		System.out.println(vo.getFaCategory());
		System.out.println(vo.getFaContent());
		return mv;
	}
}
