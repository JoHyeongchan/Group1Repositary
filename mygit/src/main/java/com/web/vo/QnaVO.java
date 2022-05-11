package com.web.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class QnaVO {
	private String qId,qTitle,qContent,qDateStr,qUserId,qFile,qSfile;
	private int qHits,qGroup,qDepth,qSort;
	CommonsMultipartFile formFile;
	
	public String getqId() {
		return qId;
	}
	public void setqId(String qId) {
		this.qId = qId;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	public String getqDateStr() {
		return qDateStr;
	}
	public void setqDateStr(String qDateStr) {
		this.qDateStr = qDateStr;
	}
	public String getqUserId() {
		return qUserId;
	}
	public void setqUserId(String qUserId) {
		this.qUserId = qUserId;
	}
	public String getqFile() {
		return qFile;
	}
	public void setqFile(String qFile) {
		this.qFile = qFile;
	}
	public String getqSfile() {
		return qSfile;
	}
	public void setqSfile(String qSfile) {
		this.qSfile = qSfile;
	}
	public int getqHits() {
		return qHits;
	}
	public void setqHits(int qHits) {
		this.qHits = qHits;
	}
	public int getqGroup() {
		return qGroup;
	}
	public void setqGroup(int qGroup) {
		this.qGroup = qGroup;
	}
	public int getqDepth() {
		return qDepth;
	}
	public void setqDepth(int qDepth) {
		this.qDepth = qDepth;
	}
	public int getqSort() {
		return qSort;
	}
	public void setqSort(int qSort) {
		this.qSort = qSort;
	}
	public CommonsMultipartFile getFormFile() {
		return formFile;
	}
	public void setFormFile(CommonsMultipartFile formFile) {
		this.formFile = formFile;
	}
	
	
	
	
}
