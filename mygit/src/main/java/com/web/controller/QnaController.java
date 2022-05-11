package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.vo.QnaVO;

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
	
	@RequestMapping(value="/qna_write.do",method = RequestMethod.POST)
	public ModelAndView qnaWrite(QnaVO vo) {
		ModelAndView mv=new ModelAndView("redirect: /mygit/qna_list.do");
		System.out.println(vo.getqTitle());
		System.out.println(vo.getqContent());
		System.out.println(vo.getFormFile().getOriginalFilename());
		return  mv;
	}
	
	@RequestMapping(value="/qna_update.do",method = RequestMethod.GET)
	public String qnaUpdate() {
		return "/qna/qna_update";
	}
	
	@RequestMapping(value="/qna_update.do",method = RequestMethod.POST)
	public ModelAndView qnaUpdate(QnaVO vo) {
		ModelAndView mv=new ModelAndView("redirect: /mygit/qna_list.do");
		System.out.println(vo.getqTitle());
		System.out.println(vo.getqContent());
		System.out.println(vo.getFormFile().getOriginalFilename());
		return  mv;
	}
	
	@RequestMapping(value="/qna_content.do",method = RequestMethod.GET)
	public String qnaContent() {
		return "/qna/qna_content";
	}
}
