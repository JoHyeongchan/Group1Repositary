package com.web.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.web.vo.DigitalMovieVO;

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
	
	public void fileSave(DigitalMovieVO vo, HttpServletRequest request) throws Exception, IOException {
		if(!vo.getFormFile().getOriginalFilename().equals("")) {
			String rootPath= request.getSession().getServletContext().getRealPath("/");
			rootPath+="resources\\upload\\";

			File newFile=new File(rootPath+vo.getDmSfile());
			vo.getFormFile().transferTo(newFile);
			System.out.println(rootPath);
			
		}
	}

}
