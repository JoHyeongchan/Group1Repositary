package com.web.service;

import java.util.List;

public interface CollectionService extends ObjectService{

public int InsertRecord(Object obj);
	
	int getRecordCount();
	
	List<Object> getRecordList(int startCount, int endCount);
}
