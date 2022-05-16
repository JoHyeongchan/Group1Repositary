package com.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.dao.DigitalMovieDAO;
import com.web.service.FileServiceImpl;
import com.web.service.PageServiceImpl;
//import com.web.dao.DigitalMovieDAO;
import com.web.vo.CollectionVO;
import com.web.vo.DigitalMovieVO;

@Controller
public class OnDispController {
	
	
	@Autowired
	FileServiceImpl fileService;
	
	@Autowired
	DigitalMovieDAO digitalMovieDao;
	
	@Autowired
	PageServiceImpl pageService;

	@RequestMapping(value="/online/digitalMovList.do",method=RequestMethod.GET)
	public ModelAndView onDigitalMovList(String rpage) {
		ModelAndView mv=new ModelAndView();
		
		Map<String, String> param= pageService.getPageResult(rpage);
		
		int startCount=Integer.parseInt( param.get("start"));
		int endCount=Integer.parseInt(param.get("end"));
		int dbCount=Integer.parseInt(param.get("dbCount"));
		int reqPage=Integer.parseInt(param.get("reqPage"));
		int pageSize=Integer.parseInt(param.get("pageSize"));
		int pageCount=Integer.parseInt(param.get("pageCount"));
		
		List<DigitalMovieVO> list=digitalMovieDao.select(startCount,endCount);
		
		int divLast=pageSize-dbCount%pageSize;
		
		mv.addObject("divLast",divLast);
		mv.addObject("reqPage", reqPage);
		mv.addObject("pageCount", pageCount);
		mv.addObject("list", list);
		mv.setViewName("/onlinedisp/on_digitalMov_list");
		return mv;
	}
	
	@RequestMapping(value="/online/collectionList.do",method=RequestMethod.GET)
	public String onCollection() {
		return "/onlinedisp/on_collection_list";
	}
	
	@RequestMapping(value="/online/digitalMovInfo.do",method=RequestMethod.GET)
	public ModelAndView onDigitalMovInfo(String dmId) {
		ModelAndView mv=new ModelAndView("/onlinedisp/on_digitalMov_info");
		DigitalMovieVO vo=digitalMovieDao.select(dmId);

		/*int idNo=Integer.parseInt(idNoStr);
		
		String prevId=String.format("dm%04d", idNo-1);
		String nextId=String.format("dm%04d", idNo+1);
		System.out.println(prevId);
		
		mv.addObject("prevId",prevId);
		mv.addObject("nextId",nextId);
		*/
		mv.addObject("dmid",dmId);
		mv.addObject("vo", vo);
		return mv;
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
	public ModelAndView onDigitalMovWrite(DigitalMovieVO vo, HttpServletRequest request) throws Exception{
		ModelAndView mv=new ModelAndView();
		//FileServiceImpl fileService=new FileServiceImpl();
		
		vo=fileService.fileCheck(vo);
		
		int result=digitalMovieDao.insert(vo);
		if(result==1) {
			fileService.fileSave(vo, request);
		}
		
		mv.setViewName("redirect: /mygit/online/digitalMovList.do?rpage=1");
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
	public ModelAndView onDigitalMovUpdate(String dmId) {
		ModelAndView mv= new ModelAndView("/onlinedisp/on_digitalMov_update");
		DigitalMovieVO vo=digitalMovieDao.select(dmId);
		vo.setCategoryInv();
		vo.setProgramInv();
		mv.addObject("vo", vo);
		return  mv;
	}
	
	@RequestMapping(value="/online/digitalMovUpdate.do",method=RequestMethod.POST)
	public ModelAndView onDigitalMovUpdate(DigitalMovieVO vo,HttpServletRequest request) throws Exception, Exception {
		ModelAndView mv=new ModelAndView();
		System.out.println(vo.getDmFile());
		String sfile=vo.getDmSfile();
		vo=fileService.fileCheck(vo);	
		
		int result=digitalMovieDao.update(vo);

		
		if(result==1) {
			if(vo.getDmFile()!=null) {
				fileService.fileSave(vo, request);
				fileService.deleteFile(sfile, request);
			}
		}
	
		mv.setViewName("redirect: /mygit/online/digitalMovList.do?rpage=1");
		return mv;
	}
	
	@RequestMapping(value="/online/collectionDelete.do",method=RequestMethod.GET)
	public String onCollectionDelete() {
		return "redirect:/online/collectionList.do";
	}
	
	@RequestMapping(value="/online/digitalMovDelete.do",method=RequestMethod.GET)
	public String onDigitalMovDelete(String dmId,HttpServletRequest request) {
		
		System.out.println(dmId);
		DigitalMovieVO vo=digitalMovieDao.select(dmId);
		String sfile="";
		if(vo.getDmSfile()!="") {
			sfile=vo.getDmSfile();
		}
		
		int result=digitalMovieDao.delete(dmId);
		
		if(result==1) {
			fileService.deleteFile(sfile,request);
		}
		
		
		
		
		return "redirect:/online/digitalMovList.do?rpage=1";
		}
	
	

	@RequestMapping(value="/online/on_show.do",method=RequestMethod.GET)
	public String onShow() {
		return "/onlinedisp/on_show";
	}
}
