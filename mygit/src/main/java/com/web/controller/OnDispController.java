package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.vo.CollectionVO;
import com.web.vo.DigitalMovieVO;

@Controller
public class OnDispController {

	@RequestMapping(value="/online/digitalMovList.do",method=RequestMethod.GET)
	public String onDigitalMovList() {
		return "/onlinedisp/on_digitalMov_list";
	}
	
	@RequestMapping(value="/online/collectionList.do",method=RequestMethod.GET)
	public String onCollection() {
		return "/onlinedisp/on_collection_list";
	}
	
	@RequestMapping(value="/online/digitalMovInfo.do",method=RequestMethod.GET)
	public String onDigitalMovInfo() {
		return "/onlinedisp/on_digitalMov_info";
	}
	
	@RequestMapping(value="/online/collectionInfo.do",method=RequestMethod.GET)
	public String onCollectionInfo() {
		return "/onlinedisp/on_collection_info";
	}
	
	@RequestMapping(value="/online/collectionWrite.do",method=RequestMethod.GET)
	public String onCollectionWrite() {
		return "/onlinedisp/on_collection_write";
	}
	
	@RequestMapping(value="/online/collectionWrite.do",method=RequestMethod.POST)
	public ModelAndView onCollectionWrite(CollectionVO vo) {
		ModelAndView mv=new ModelAndView();
		
		System.out.println(vo.getCoTitle());
		System.out.println(vo.getFormFile().getOriginalFilename());
		System.out.println(vo.getCoAuthorKor());
		System.out.println(vo.getCoAuthorEng());
		System.out.println(vo.getCoName());
		System.out.println(vo.getCoYear());
		System.out.println(vo.getCoDim());
		System.out.println(vo.getCoCategory());
		System.out.println(vo.getCoIsDisp());
		System.out.println(vo.getCoContent());
		
		mv.setViewName("redirect: /mygit/online/collectionList.do");
		return mv;
	}
	
	@RequestMapping(value="/online/digitalMovWrite.do",method=RequestMethod.GET)
	public String onDigitalMovWrite() {
		return "/onlinedisp/on_digitalMov_write";
	}
	
	@RequestMapping(value="/online/digitalMovWrite.do",method=RequestMethod.POST)
	public ModelAndView onDigitalMovWrite(DigitalMovieVO vo) {
		ModelAndView mv=new ModelAndView();
		
		System.out.println(vo.getDmTitle());
		System.out.println(vo.getFormFile().getOriginalFilename());
		System.out.println(vo.getDmUrl());
		System.out.println(vo.getDmTitle());
		System.out.println(vo.getDmProgram());
		System.out.println(vo.getDmCategory());
		
		mv.setViewName("redirect: /mygit/online/digitalMovList.do");
		return mv;
	}
	
	@RequestMapping(value="/online/collectionUpdate.do",method=RequestMethod.GET)
	public String onCollectionUpdate() {
		return "/onlinedisp/on_collection_update";
	}
	
	@RequestMapping(value="/online/collectionUpdate.do",method=RequestMethod.POST)
	public ModelAndView onCollectionUpdate(CollectionVO vo) {
		ModelAndView mv=new ModelAndView();
		
		System.out.println(vo.getCoTitle());
		System.out.println(vo.getFormFile().getOriginalFilename());
		System.out.println(vo.getCoAuthorKor());
		System.out.println(vo.getCoAuthorEng());
		System.out.println(vo.getCoName());
		System.out.println(vo.getCoYear());
		System.out.println(vo.getCoDim());
		System.out.println(vo.getCoCategory());
		System.out.println(vo.getCoIsDisp());
		System.out.println(vo.getCoContent());
		
		mv.setViewName("redirect: /mygit/online/collectionList.do");
		return mv;
	}
	
	
	@RequestMapping(value="/online/digitalMovUpdate.do",method=RequestMethod.GET)
	public String onDigitalMovUpdate() {
		return "/onlinedisp/on_digitalMov_update";
	}
	
	@RequestMapping(value="/online/digitalMovUpdate.do",method=RequestMethod.POST)
	public ModelAndView onDigitalMovUpdate(DigitalMovieVO vo) {
		ModelAndView mv=new ModelAndView();
		
		System.out.println(vo.getDmTitle());
		System.out.println(vo.getFormFile().getOriginalFilename());
		System.out.println(vo.getDmUrl());
		System.out.println(vo.getDmTitle());
		System.out.println(vo.getDmProgram());
		System.out.println(vo.getDmCategory());
		
		mv.setViewName("redirect: /mygit/online/digitalMovList.do");
		return mv;
	}
	
	@RequestMapping(value="/online/collectionDelete.do",method=RequestMethod.GET)
	public String onCollectionDelete() {
		return "redirect:/online/collectionList.do";
	}
	
	@RequestMapping(value="/online/digitalMovDelete.do",method=RequestMethod.GET)
	public String onDigitalMovDelete() {
		return "redirect:/online/digitalMovList.do";
	}
	
	@RequestMapping(value="/online/on_show.do",method=RequestMethod.GET)
	public String onShow() {
		return "/onlinedisp/on_show";
	}
}
