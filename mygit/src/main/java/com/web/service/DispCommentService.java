package com.web.service;

import java.util.List;

public interface DispCommentService extends ObjectService{

	int InsertRecord(Object obj);
	
	int getRecordCount();
	
	List<Object> getRecordList(int startCount, int endCount);
	
	Object getContent(String qId);

	//int insertReplyProcess(Object obj);

	int deleteContent(String qId);

	int updateContent(Object obj);
	
	void updateHits(String qId);
}
