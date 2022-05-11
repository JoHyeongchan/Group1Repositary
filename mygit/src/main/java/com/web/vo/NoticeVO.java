package com.web.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class NoticeVO {

	String nId,nTitle,nContent,nDateStr,nCategory,nFile,nSfile;
	int nHits;
	CommonsMultipartFile formFile;
	
	public String getnId() {
		return nId;
	}
	public void setnId(String nId) {
		this.nId = nId;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public String getnDateStr() {
		return nDateStr;
	}
	public void setnDateStr(String nDateStr) {
		this.nDateStr = nDateStr;
	}
	public String getnCategory() {
		return nCategory;
	}
	public void setnCategory(String nCategory) {
		this.nCategory = nCategory;
	}
	public String getnFile() {
		return nFile;
	}
	public void setnFile(String nFile) {
		this.nFile = nFile;
	}
	public String getnSfile() {
		return nSfile;
	}
	public void setnSfile(String nSfile) {
		this.nSfile = nSfile;
	}
	public int getnHits() {
		return nHits;
	}
	public void setnHits(int nHits) {
		this.nHits = nHits;
	}
	public CommonsMultipartFile getFormFile() {
		return formFile;
	}
	public void setFormFile(CommonsMultipartFile formFile) {
		this.formFile = formFile;
	}
	
	
}
