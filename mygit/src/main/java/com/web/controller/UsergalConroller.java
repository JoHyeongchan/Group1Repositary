package com.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsergalConroller {

	@RequestMapping(value="/usergal/usergal_list.do",method=RequestMethod.GET)
	public ModelAndView usergalList(String rpage, HttpSession id) {
		ModelAndView mv=new ModelAndView("/usergallery/usergal_list");
		mv.addObject("id",id);
		return mv;
	}
	
	@RequestMapping(value="/usergal/collectionList.do",method=RequestMethod.GET)
	public String usergalCollectionList() {
		return "/usergallery/usergal_collection_list";
	}
	/*
	@RequestMapping(value="/usergal/item_content.do",method=RequestMethod.GET)
	public String usergalItemContent() {
		return "/usergallery/item/usergal_item_content";
	}*/
	
	@RequestMapping(value="/usergal/galleryList.do",method=RequestMethod.GET)
	public String usergalDigigalList() {
		return "/usergallery/usergal_gallery_list";
	}
	/*
	@RequestMapping(value="/usergal/digigal_content.do",method=RequestMethod.GET)
	public String usergalDigigalContent() {
		return "/usergallery/digigal/usergal_digigal_content";
	}*/
	
	
}
