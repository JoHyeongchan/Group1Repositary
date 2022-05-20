package com.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.DispCommentServiceImpl;
import com.web.service.FileServiceImpl;
import com.web.service.PageServiceImpl;
import com.web.vo.DispCommentVO;
import com.web.vo.NoticeVO;

@Controller
public class CommentController {
	
	@Autowired
	DispCommentServiceImpl dispCommentService;
	
	@Autowired
	FileServiceImpl fileService;
	
	@Autowired
	PageServiceImpl pageService;
	
	@RequestMapping(value="/comment_list.do",method=RequestMethod.GET)
	public ModelAndView commentList(String rpage){
		ModelAndView mv=new ModelAndView("/comment/comment_list");
		
		Map<String, String> param= pageService.getPageResult(rpage, "comment", dispCommentService);
		
		int startCount=Integer.parseInt( param.get("start"));
		int endCount=Integer.parseInt(param.get("end"));
		int dbCount=Integer.parseInt(param.get("dbCount"));
		int reqPage=Integer.parseInt(param.get("reqPage"));
		int pageSize=Integer.parseInt(param.get("pageSize"));
		int pageCount=Integer.parseInt(param.get("pageCount"));
		
		//List<Object> olist=digitalMovieService.getRecordList(startCount, endCount);
		//List<CollectionVO> list=new ArrayList<DigitalMovieVO>();
		List<Object> olist=dispCommentService.getRecordList(startCount, endCount);
		List<DispCommentVO> list=new ArrayList<DispCommentVO>();
		
		for(Object obj:olist) {
			list.add((DispCommentVO)obj);
		}
				
		int divLast=0;
		if(dbCount%pageSize!=0) {
			divLast=pageSize-dbCount%pageSize;
		}
		
		mv.addObject("divLast",divLast);
		mv.addObject("reqPage", reqPage);
		mv.addObject("pageCount", pageCount);
		mv.addObject("list", list);
		
		return mv;
	}
	
	@RequestMapping(value="/comment_content.do",method=RequestMethod.GET)
	public ModelAndView commentContent(String cmId){
		ModelAndView mv=new ModelAndView("/comment/comment_content");
		DispCommentVO vo=(DispCommentVO) dispCommentService.getContent(cmId);
		String str=vo.getCmContent().replaceAll(System.getProperty("line.separator"), "<br>");
		vo.setCmContent(str);
		dispCommentService.updateHits(cmId);
		mv.addObject("vo", vo);
		return mv;
	}
	
	@RequestMapping(value="/comment_write.do",method=RequestMethod.GET)
	public String commentWrite(){
		return "/comment/comment_write";
	}
	
	@RequestMapping(value="/comment_write.do",method=RequestMethod.POST)
	public ModelAndView commentWrite(DispCommentVO vo,HttpServletRequest request) throws Exception{
		ModelAndView mv=new ModelAndView();
		vo=fileService.fileCheck(vo);
		int result=dispCommentService.InsertRecord(vo);
		if(result!=0) {
			fileService.fileSave(vo, request);
		}
		
		mv.setViewName("redirect: comment_list.do?rpage=1");		
		return  mv;
	}
	
	@RequestMapping(value="/comment_update.do",method=RequestMethod.GET)
	public String commentUpdate(){
		return "/comment/comment_update";
	}
	
	@RequestMapping(value="/comment_update.do",method=RequestMethod.POST)
	public ModelAndView commentUpdate(DispCommentVO vo){
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("redirect: /mygit/comment/comment_list");		
		return  mv;
	}
}
