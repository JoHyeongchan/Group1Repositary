package com.web.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class DigitalMovieVO {
	
	private String dmId,dmTitle,dmUrl,dmFile,dmSfile,dmDate;
	private String dmContent,dmProgram,dmCategory;
	
	private String formProgram,formCategory;	
	CommonsMultipartFile formFile;
	
	int dmHits;
	int rno;
	
	public String getDmId() {
		return dmId;
	}
	public void setDmId(String dmId) {
		this.dmId = dmId;
	}
	public String getDmTitle() {
		return dmTitle;
	}
	public void setDmTitle(String dmTitle) {
		this.dmTitle = dmTitle;
	}
	public String getDmUrl() {
		return dmUrl;
	}
	public void setDmUrl(String dmUrl) {
		this.dmUrl = dmUrl;
	}
	public String getDmFile() {
		if(dmFile==null) {
			dmFile="tmp";
		}
		return dmFile;
	}
	public void setDmFile(String dmFile) {
		this.dmFile = dmFile;
	}
	public String getDmSfile() {
		if(dmSfile==null) {
			dmSfile="tmp";
		}
		return dmSfile;
	}
	public void setDmSfile(String dmSfile) {
		this.dmSfile = dmSfile;
	}
	public String getDmDate() {
		return dmDate;
	}
	public void setDmDate(String dmDate) {
		this.dmDate = dmDate;
	}
	public String getDmContent() {
		return dmContent;
	}
	public void setDmContent(String dmContent) {
		this.dmContent = dmContent;
	}
	public String getDmProgram() {
		
		if(dmProgram==null) {
			setProgram();
		}
		return dmProgram;
	}
	public void setDmProgram(String dmProgram) {

		this.dmProgram = dmProgram;
	}
	public String getDmCategory() {
		
		if(dmCategory==null) {
			setCategory();
		}		
		return dmCategory;
	}
	public void setDmCategory(String dmCategory) {
		
		this.dmCategory = dmCategory;
	}
	public int getDmHits() {
		return dmHits;
	}
	public void setDmHits(int dmHits) {
		this.dmHits = dmHits;
	}
	public CommonsMultipartFile getFormFile() {
		return formFile;
	}
	public void setFormFile(CommonsMultipartFile formFile) {
		this.formFile = formFile;
	}
	public String getFormProgram() {
		return formProgram;
	}
	public void setFormProgram(String formProgram) {
		this.formProgram = formProgram;
	}
	public String getFormCategory() {
		return formCategory;
	}
	public void setFormCategory(String formCategory) {
		this.formCategory = formCategory;
	}
	
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	
	public void setProgram(){
		String result="";
		
		if (formProgram.equals("p1")) {
			result="관장이 들려주는 소장품 이야기";
		}else if (formProgram.equals("p2")){
			result="큐레이터 전시 해설";
		}else if (formProgram.equals("p3")){
			result="강의 & 학술토론";
		}else if (formProgram.equals("p4")){
			result="작품 & 작가";
		}else if (formProgram.equals("p5")){
			result="미술관 소식";
		}else if (formProgram.equals("p6")){
			result="오늘, 이 작품";
		}
		else {
			result="invalid formProgram";
		}
		dmProgram=result;
	}
	
	public void setCategory(){
		String result="";
		
		if (formCategory.equals("c1")) {
			result="전시연계";
		}else if (formCategory.equals("c2")){
			result="전시감상";
		}else if (formCategory.equals("c3")){
			result="진로탐색";
		}else if (formCategory.equals("c4")){
			result="보존과학";
		}else if (formCategory.equals("c5")){
			result="작가인터뷰";
		}else if (formCategory.equals("c6")){
			result="전시소개";
		}
		else {
			result="";
		}
		dmCategory=result;
	}
}
