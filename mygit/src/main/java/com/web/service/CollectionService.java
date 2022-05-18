package com.web.service;

import java.util.List;

import com.web.vo.CollectionVO;

public interface CollectionService extends ObjectService{

public int InsertRecord(Object obj);
	
	int getRecordCount();
	
	List<Object> getRecordList(int startCount, int endCount);

	Object getContent(String coId);
	
	int deleteContent(String dmId) ;
}
