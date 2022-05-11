package com.web.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class DigitalMovieVO {
	
	private String dmId,dmTitle,dmUrl,dmFile,dmSfile,dmDateStr;
	private String dmContent,dmProgram,dmCategory;
	
	CommonsMultipartFile formFile;
	
	int dmHits;
	
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
		return dmFile;
	}
	public void setDmFile(String dmFile) {
		this.dmFile = dmFile;
	}
	public String getDmSfile() {
		return dmSfile;
	}
	public void setDmSfile(String dmSfile) {
		this.dmSfile = dmSfile;
	}
	public String getDmDateStr() {
		return dmDateStr;
	}
	public void setDmDateStr(String dmDateStr) {
		this.dmDateStr = dmDateStr;
	}
	public String getDmContent() {
		return dmContent;
	}
	public void setDmContent(String dmContent) {
		this.dmContent = dmContent;
	}
	public String getDmProgram() {
		return dmProgram;
	}
	public void setDmProgram(String dmProgram) {
		this.dmProgram = dmProgram;
	}
	public String getDmCategory() {
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
	
	
}
