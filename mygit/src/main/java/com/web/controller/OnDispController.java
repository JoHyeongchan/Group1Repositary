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
	
	@RequestMapping(value="/online/collectionWrite.do",method=RequestMethod.GET)
	public String onCollectionWrite() {
		return "/onlinedisp/on_collection_write";
	}
	
	@RequestMapping(value="/online/digitalMovWrite.do",method=RequestMethod.GET)
	public String onDigitalMovWrite() {
		return "/onlinedisp/on_digitalMov_write";
	}
	
	@RequestMapping(value="/online/collectionUpdate.do",method=RequestMethod.GET)
	public String onCollectionUpdate() {
		return "/onlinedisp/on_collection_update";
	}
	
	@RequestMapping(value="/online/digitalMovUpdate.do",method=RequestMethod.GET)
	public String onDigitalMovUpdate() {
		return "/onlinedisp/on_digitalMov_update";
	}
	
	@RequestMapping(value="/online/collectionDelete.do",method=RequestMethod.GET)
	public String onCollectionDelete() {
		return "redirect:/collectionList.do";
	}
	
	@RequestMapping(value="/online/digitalMovDelete.do",method=RequestMethod.GET)
	public String onDigitalMovDelete() {
		return "redirect:/digitalMovList.do";
	}
	
	@RequestMapping(value="/online/on_show.do",method=RequestMethod.GET)
	public String onShow() {
		return "/onlinedisp/on_show";
	}
}
