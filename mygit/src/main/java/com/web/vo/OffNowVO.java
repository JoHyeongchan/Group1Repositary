package com.web.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class OffNowVO {
	
	private String exId,exCategory,exTitle,exTermStart,exTermend,exPlace,exContent,exAuthor,exHost,exImage;
	private String prevId,nextId,prevTitle,nextTitle;
	
	public String getPrevId() {
		return prevId;
	}

	public void setPrevId(String prevId) {
		this.prevId = prevId;
	}

	public String getNextId() {
		return nextId;
	}

	public void setNextId(String nextId) {
		this.nextId = nextId;
	}

	public String getPrevTitle() {
		return prevTitle;
	}

	public void setPrevTitle(String prevTitle) {
		this.prevTitle = prevTitle;
	}

	public String getNextTitle() {
		return nextTitle;
	}

	public void setNextTitle(String nextTitle) {
		this.nextTitle = nextTitle;
	}

	int exHits,exNo,exPiece,exPrice;

	public String getExId() {
		return exId;
	}

	public void setExId(String exId) {
		this.exId = exId;
	}

	public String getExCategory() {
		return exCategory;
	}

	public void setExCategory(String exCategory) {
		this.exCategory = exCategory;
	}

	public String getExTitle() {
		return exTitle;
	}

	public void setExTitle(String exTitle) {
		this.exTitle = exTitle;
	}

	public String getExTermStart() {
		return exTermStart;
	}

	public void setExTermStart(String exTermStart) {
		this.exTermStart = exTermStart;
	}

	public String getExTermend() {
		return exTermend;
	}

	public void setExTermend(String exTermend) {
		this.exTermend = exTermend;
	}

	public String getExPlace() {
		return exPlace;
	}

	public void setExPlace(String exPlace) {
		this.exPlace = exPlace;
	}

	public String getExContent() {
		return exContent;
	}

	public void setExContent(String exContent) {
		this.exContent = exContent;
	}

	public String getExAuthor() {
		return exAuthor;
	}

	public void setExAuthor(String exAuthor) {
		this.exAuthor = exAuthor;
	}

	public String getExHost() {
		return exHost;
	}

	public void setExHost(String exHost) {
		this.exHost = exHost;
	}

	public String getExImage() {
		return exImage;
	}

	public void setExImage(String exImage) {
		this.exImage = exImage;
	}

	public int getExHits() {
		return exHits;
	}

	public void setExHits(int exHits) {
		this.exHits = exHits;
	}

	public int getExNo() {
		return exNo;
	}

	public void setExNo(int exNo) {
		this.exNo = exNo;
	}

	public int getExPiece() {
		return exPiece;
	}

	public void setExPiece(int exPiece) {
		this.exPiece = exPiece;
	}

	public int getExPrice() {
		return exPrice;
	}

	public void setExPrice(int exPrice) {
		this.exPrice = exPrice;
	}
}