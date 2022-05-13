package com.web.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class CommentVO {
	
		String cmId,cmTitle,cmDisp,cmUserId,cmContent,cmDateStr,cmFile,cmSfile;
		int cmHits;
		
		CommonsMultipartFile formFile;

		public String getCmId() {
			return cmId;
		}

		public void setCmId(String cmId) {
			this.cmId = cmId;
		}

		public String getCmTitle() {
			return cmTitle;
		}

		public void setCmTitle(String cmTitle) {
			this.cmTitle = cmTitle;
		}

		public String getCmDisp() {
			return cmDisp;
		}

		public void setCmDisp(String cmDisp) {
			this.cmDisp = cmDisp;
		}

		public String getCmUserId() {
			return cmUserId;
		}

		public void setCmUserId(String cmUserId) {
			this.cmUserId = cmUserId;
		}

		public String getCmContent() {
			return cmContent;
		}

		public void setCmContent(String cmContent) {
			this.cmContent = cmContent;
		}

		public String getCmDateStr() {
			return cmDateStr;
		}

		public void setCmDateStr(String cmDateStr) {
			this.cmDateStr = cmDateStr;
		}

		public String getCmFile() {
			return cmFile;
		}

		public void setCmFile(String cmFile) {
			this.cmFile = cmFile;
		}

		public String getCmSfile() {
			return cmSfile;
		}

		public void setCmSfile(String cmSfile) {
			this.cmSfile = cmSfile;
		}

		public int getCmHits() {
			return cmHits;
		}

		public void setCmHits(int cmHits) {
			this.cmHits = cmHits;
		}

		public CommonsMultipartFile getFormFile() {
			return formFile;
		}

		public void setFormFile(CommonsMultipartFile formFile) {
			this.formFile = formFile;
		}
		
		
}
