package com.web.service;

import java.util.List;

public interface NoticeService extends ObjectService{

int InsertRecord(Object obj);
	
	int getRecordCount();
	
	List<Object> getRecordList(int startCount, int endCount);
	
	Object getContent(String nId);

	//int insertReplyProcess(Object obj);

	int deleteContent(String nId);

	int updateContent(Object obj);
	
	void updateHits(String nId);
}
