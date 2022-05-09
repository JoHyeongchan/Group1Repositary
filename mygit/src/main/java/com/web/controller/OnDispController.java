package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value="/online/on_show.do",method=RequestMethod.GET)
	public String onShow() {
		return "/onlinedisp/on_show";
	}
}
