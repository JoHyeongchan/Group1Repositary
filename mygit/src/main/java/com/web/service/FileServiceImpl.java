package com.web.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.web.vo.CollectionVO;
import com.web.vo.DigitalMovieVO;
import com.web.vo.QnaVO;

public class FileServiceImpl {
	
	public DigitalMovieVO fileCheck(DigitalMovieVO vo) {
		
		String file="";
		String sfile="";
		if(!vo.getFormFile().getOriginalFilename().equals("")) {
			UUID uuid=UUID.randomUUID();
			file=vo.getFormFile().getOriginalFilename();
			sfile=file+"_"+uuid;			
			vo.setDmFile(file);
			vo.setDmSfile(sfile);
		}
		
		
		return vo;
	}
	
	public CollectionVO fileCheck(CollectionVO vo) {
		
		String file="";
		String sfile="";
		if(!vo.getFormFile().getOriginalFilename().equals("")) {
			UUID uuid=UUID.randomUUID();
			file=vo.getFormFile().getOriginalFilename();
			sfile=file+"_"+uuid;			
			vo.setCoFile(file);
			vo.setCoSfile(sfile);
		}	
		return vo;
	}
	
	public QnaVO fileCheck(QnaVO vo) {
		// TODO Auto-generated method stub
		String file="";
		String sfile="";
		if(!vo.getFormFile().getOriginalFilename().equals("")) {
			UUID uuid=UUID.randomUUID();
			file=vo.getFormFile().getOriginalFilename();
			sfile=file+"_"+uuid;
			vo.setqFile(file);
			vo.setqSfile(sfile);
		}	
		
		return vo;
	}
	
	public void fileSave(DigitalMovieVO vo, HttpServletRequest request) throws Exception, IOException {
		if(!vo.getFormFile().getOriginalFilename().equals("")) {
			String rootPath= request.getSession().getServletContext().getRealPath("/");
			rootPath+="resources\\upload\\";

			File newFile=new File(rootPath+vo.getDmSfile());
			vo.getFormFile().transferTo(newFile);
			System.out.println(rootPath);
			
		}
	}
	
	public void fileSave(CollectionVO vo, HttpServletRequest request) throws Exception, IOException {
		if(!vo.getFormFile().getOriginalFilename().equals("")) {
			String rootPath= request.getSession().getServletContext().getRealPath("/");
			rootPath+="resources\\upload\\";

			File newFile=new File(rootPath+vo.getCoSfile());
			vo.getFormFile().transferTo(newFile);
			System.out.println(rootPath);
			
		}
	}
	
	public void fileSave(QnaVO vo, HttpServletRequest request) throws Exception, IOException {
		if(!vo.getFormFile().getOriginalFilename().equals("")) {
			String rootPath= request.getSession().getServletContext().getRealPath("/");
			rootPath+="resources\\upload\\";

			File newFile=new File(rootPath+vo.getqSfile());
			vo.getFormFile().transferTo(newFile);
			System.out.println(rootPath);
			
		}
	}
	
	

	public void deleteFile(String sfile, HttpServletRequest request) {
		// TODO Auto-generated method stub
		if(sfile!="") {
			String rootPath= request.getSession().getServletContext().getRealPath("/");
			rootPath+="resources\\upload\\";
			
			File delFile=new File(rootPath+sfile);
			if(delFile.exists()) {
				delFile.delete();
			}
		}
	}

	

}
