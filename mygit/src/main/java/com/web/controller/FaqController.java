package com.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.convert.TransformNew;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.FaqServiceImpl;
import com.web.vo.FaqVO;

@Controller
public class FaqController {
	
	@Autowired
	FaqServiceImpl faqService;

	@RequestMapping(value="/faq_list.do",method=RequestMethod.GET)
	public ModelAndView faqList(HttpSession session) {
		ModelAndView mv=new ModelAndView("/faq/faq_list");
		String id=(String)session.getAttribute("id");
		mv.addObject("id", id);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/faq_category.do",method=RequestMethod.GET)
	public List<FaqVO>  faqSelectCategory(String faCategory) {
		
		List<Object> olist=faqService.getRecordList(1, faqService.getRecordCount(faCategory),faCategory);
		List<FaqVO> list=new ArrayList<FaqVO>();
		
		for(Object obj :olist) {
			list.add((FaqVO)obj);
		}
		return list;
	}
	
	@RequestMapping(value="/faq_write.do",method=RequestMethod.GET)
	public String faqWrite() {
		return "/faq/faq_write";
	}
	
	@RequestMapping(value="/faq_write.do",method=RequestMethod.POST)
	public ModelAndView faqWrite(FaqVO vo) {
		ModelAndView mv=new ModelAndView("redirect: /mygit/faq_list.do");
		int result=faqService.InsertRecord(vo);
		if(result!=1) {
			
		}
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
