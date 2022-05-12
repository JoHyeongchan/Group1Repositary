package com.web.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class CollectionVO {

	private String coId,coTitle,coFile,coSfile,coContent,coDateStr;
	private String coAuthorKor, coAuthorEng,coName, coYear, coMaterial;
	private String coDim, coCategory, coManageId, coIsDisp;
	
	private CommonsMultipartFile formFile;
	private String formCategory;
	
	int coHits;
	
	public String getCoId() {
		return coId;
	}
	public void setCoId(String coId) {
		this.coId = coId;
	}
	public String getCoTitle() {
		return coTitle;
	}
	public void setCoTitle(String coTitle) {
		this.coTitle = coTitle;
	}
	public String getCoFile() {
		return coFile;
	}
	public void setCoFile(String coFile) {
		this.coFile = coFile;
	}
	public String getCoSfile() {
		return coSfile;
	}
	public void setCoSfile(String coSfile) {
		this.coSfile = coSfile;
	}
	public String getCoContent() {
		return coContent;
	}
	public void setCoContent(String coContent) {
		this.coContent = coContent;
	}
	public String getCoDateStr() {
		return coDateStr;
	}
	public void setCoDateStr(String coDateStr) {
		this.coDateStr = coDateStr;
	}
	public String getCoAuthorKor() {
		return coAuthorKor;
	}
	public void setCoAuthorKor(String coAuthorKor) {
		this.coAuthorKor = coAuthorKor;
	}
	public String getCoAuthorEng() {
		return coAuthorEng;
	}
	public void setCoAuthorEng(String coAuthorEng) {
		this.coAuthorEng = coAuthorEng;
	}
	public String getCoName() {
		return coName;
	}
	public void setCoName(String coName) {
		this.coName = coName;
	}
	public String getCoYear() {
		return coYear;
	}
	public void setCoYear(String coYear) {
		this.coYear = coYear;
	}
	public String getCoMaterial() {
		return coMaterial;
	}
	public void setCoMaterial(String coMaterial) {
		this.coMaterial = coMaterial;
	}
	public String getCoDim() {
		return coDim;
	}
	public void setCoDim(String coDim) {
		this.coDim = coDim;
	}
	public String getCoCategory() {
		if(coCategory==null)
		{
			coCategory=setCategory();
		}else if(coCategory.length()==0){
			coCategory=setCategory();
		}
		return coCategory;
	}
	public void setCoCategory(String coCategory) {
		
		if(this.coCategory==null)
		{
			coCategory=setCategory();
		}else if(this.coCategory.length()==0){
			coCategory=setCategory();
		}
		
		this.coCategory = coCategory;
	}
	public String getCoManageId() {
		return coManageId;
	}
	public void setCoManageId(String coManageId) {
		this.coManageId = coManageId;
	}
	public String getCoIsDisp() {
		return coIsDisp;
	}
	public void setCoIsDisp(String coIsDisp) {
		this.coIsDisp = coIsDisp;
	}
	public int getCoHits() {
		return coHits;
	}
	public void setCoHits(int coHits) {
		this.coHits = coHits;
	}
	public CommonsMultipartFile getFormFile() {
		return formFile;
	}
	public void setFormFile(CommonsMultipartFile formFile) {
		this.formFile = formFile;
	}
	public String getFormCategory() {
		return formCategory;
	}
	public void setFormCategory(String formCategory) {
		this.formCategory = formCategory;
	}
	
	private String setCategory() {

		String result="";
		if(formCategory.equals("ko")) {
			result="한국화";
		}else if(formCategory.equals("pa")) {
			result="회화";
		}else if(formCategory.equals("sc")) {
			result="조각";
		}else if(formCategory.equals("cr")) {
			result="공예";
		}else if(formCategory.equals("nm")) {
			result="뉴미디어";
		}else if(formCategory.equals("ar")) {
			result="건축";
		}else if(formCategory.equals("de")) {
			result="디자인";
		}else if(formCategory.equals("dp")) {
			result="드로잉/판화";
		}else if(formCategory.equals("ph")) {
			result="사진";
		}else if(formCategory.equals("ca")) {
			result="서예";
		}
		
		return result;

	}
	
}
