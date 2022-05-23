package com.web.service;

import java.util.List;

public interface FaqService  extends ObjectService{

	public int InsertRecord(Object obj);
	
	int getRecordCount();

	Object getContent(String faId);
	
	int deleteContent(String faId) ;

	List<Object> getRecordList(int startCount, int endCount, String faCategory);
}
