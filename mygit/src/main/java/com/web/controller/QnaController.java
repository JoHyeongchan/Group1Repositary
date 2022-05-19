package com.web.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.FileServiceImpl;
import com.web.service.PageServiceImpl;
import com.web.service.QnaServiceImpl;
import com.web.vo.QnaVO;

@Controller
public class QnaController {

	@Autowired
	FileServiceImpl fileService;
	
	@Autowired
	QnaServiceImpl qnaService;
	
	@Autowired
	PageServiceImpl pageService;
	
	@RequestMapping(value="/qna_list.do",method = RequestMethod.GET)
	public ModelAndView qnaList(String rpage) {
		ModelAndView mv=new ModelAndView("/qna/qna_list");
		
		Map<String, String> param= pageService.getPageResult(rpage,"qna",qnaService);
		
		int startCount=Integer.parseInt( param.get("start"));
		int endCount=Integer.parseInt(param.get("end"));
		int dbCount=Integer.parseInt(param.get("dbCount"));
		int reqPage=Integer.parseInt(param.get("reqPage"));
		int pageSize=Integer.parseInt(param.get("pageSize"));
		int pageCount=Integer.parseInt(param.get("pageCount"));
		
		List<Object> olist=qnaService.getRecordList(startCount,endCount);
		List<QnaVO> list=new ArrayList<QnaVO>();
		
		for(Object obj:olist) {
			list.add((QnaVO)obj);
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
	
	@RequestMapping(value="/qna_write.do",method = RequestMethod.GET)
	public String qnaWrite() {
		return "/qna/qna_write";
	}
	
	
	@RequestMapping(value="/qna_write.do",method = RequestMethod.POST)
	public ModelAndView qnaWrite(QnaVO vo,HttpServletRequest request) throws Exception {
		ModelAndView mv=new ModelAndView("redirect: /mygit/qna_list.do?rapge=1");
		vo.setqUserId("test");
		vo.setqOrigin(0);
		vo=fileService.fileCheck(vo);
		
		fileService.fileSave(vo, request);
		qnaService.InsertRecord(vo);
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
	public ModelAndView qnaContent(String qId) {
		ModelAndView mv=new ModelAndView("/qna/qna_content");
		QnaVO vo=new QnaVO();
		vo=(QnaVO) qnaService.getContent(qId);
		mv.addObject("vo", vo);
		return mv;
	}
	

	@RequestMapping(value="/qna_writeReply.do",method = RequestMethod.GET)
	public ModelAndView qnaWriteReply(String qId) {
		ModelAndView mv=new ModelAndView("/qna/qna_write_reply");
		mv.addObject("qId", qId);
		return mv;
	}
	
	@RequestMapping(value="/qna_writeReply.do",method = RequestMethod.POST)
	public ModelAndView qnaWriteReply(QnaVO vo, HttpServletRequest request) throws Exception {
		ModelAndView mv=new ModelAndView("redirect: /mygit/qna_list.do?rpage=1");
		vo.setqUserId("test");
		vo=fileService.fileCheck(vo);
		int result=qnaService.insertReplyProcess(vo);
		if(result!=0) {
			fileService.fileSave(vo, request);
		}
		else {
			//errorPage
		}
		
		return mv;
	}
	
	
}
