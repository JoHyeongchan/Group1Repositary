package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UsergalConroller {

	@RequestMapping(value="/usergal_list.do",method=RequestMethod.GET)
	public String usergalList() {
		return "/usergallery/usergal_list";
	}
	
	@RequestMapping(value="/usergal/item_list.do",method=RequestMethod.GET)
	public String usergalItem() {
		return "/usergallery/item/usergal_item_list";
	}
	
	@RequestMapping(value="/usergal/item_content.do",method=RequestMethod.GET)
	public String usergalItemContent() {
		return "/usergallery/item/usergal_item_content";
	}
	
	@RequestMapping(value="/usergal/digigal_list.do",method=RequestMethod.GET)
	public String usergalDigigalList() {
		return "/usergallery/digigal/usergal_digigal_list";
	}
	
	@RequestMapping(value="/usergal/digigal_content.do",method=RequestMethod.GET)
	public String usergalDigigalContent() {
		return "/usergallery/digigal/usergal_digigal_content";
	}
	
	
}
