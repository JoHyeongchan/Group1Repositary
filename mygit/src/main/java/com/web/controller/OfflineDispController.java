package com.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.DigitalMovieServiceImpl;
import com.web.service.FileServiceImpl;
import com.web.service.OfflineDispServiceImpl;
import com.web.service.PageServiceImpl;
import com.web.vo.DigitalMovieVO;
import com.web.vo.OffNowVO;

@Controller
public class OfflineDispController {
	
	@Autowired
	FileServiceImpl fileService;
	
	@Autowired
	OfflineDispServiceImpl offnowService;
	
	@Autowired
	PageServiceImpl pageService;

	@RequestMapping(value="/off_content_no.do",method=RequestMethod.GET)
	public String offContentNo() {
		return "/offlinedisp/off_content_no";
	}
	
	@RequestMapping(value="/off_future.do",method=RequestMethod.GET)
	public String offFuture() {
		return "/offlinedisp/off_future";
	}
	
	@RequestMapping(value="/offDispWrite.do",method=RequestMethod.GET)
	public String offDispWrite() {
		
		return "/offlinedisp/off_disp_write";
	}
	
	@RequestMapping(value="/offDispWrite.do",method=RequestMethod.POST)
	public ModelAndView offDispWrite(OffNowVO vo,HttpServletRequest request) throws Exception {
		ModelAndView mv=new ModelAndView();
		vo=fileService.fileCheck(vo);
		
		int result=offnowService.InsertRecord(vo);		
		if(result==1) {
			fileService.fileSave(vo, request);
		}		
		mv.setViewName("/offlinedisp/off_now");
		return mv;
		
	}
	
	@RequestMapping(value="/off_now.do",method=RequestMethod.GET)
	public ModelAndView offNow(String rpage,HttpSession session) {
		ModelAndView mv=new ModelAndView();
		String id=(String)session.getAttribute("id");
		String mode="List";
		
		if(rpage==null) {
			rpage=new String("1");
		}
		
		Map<String, String> param= pageService.getPageResult(rpage,"offNow",offnowService);
		
		int startCount=Integer.parseInt( param.get("start"));
		int endCount=Integer.parseInt(param.get("end"));
		int dbCount=Integer.parseInt(param.get("dbCount"));
		int reqPage=Integer.parseInt(param.get("reqPage"));
		int pageSize=Integer.parseInt(param.get("pageSize"));
		int pageCount=Integer.parseInt(param.get("pageCount"));
		
		List<Object> olist=offnowService.getRecordList(startCount, endCount);
		List<OffNowVO> list=new ArrayList<OffNowVO>();
		
		if (olist!=null) {
		for(Object obj:olist) {
			list.add((OffNowVO)obj);
		}
		}
		int divLast=0;
		if(dbCount%pageSize!=0) {
			divLast=pageSize-dbCount%pageSize;
		}
		
		mv.addObject("divLast",divLast);
		mv.addObject("reqPage", reqPage);
		mv.addObject("pageCount", pageCount);
		mv.addObject("list", list);
		mv.addObject("id", id);
		mv.addObject("mode",mode);
		mv.setViewName("/offlinedisp/off_now");		
		return mv;
	}
	
	@RequestMapping(value="/off_past.do",method=RequestMethod.GET)
	public String offPast() {
		return "/offlinedisp/off_past";
	}
}
