package com.web.service;

import java.util.List;

import com.web.vo.DigitalMovieVO;

public interface DigitalMovieService extends ObjectService {

	public int InsertRecord(Object obj);
	
	int getRecordCount();
	
	List<Object> getRecordList(int startCount, int endCount);
	
	Object getContent(String dmId) ;
	
	int deleteContent(String dmId) ;
	
	int updateContent(Object obj);
	
	void updateHits(String dmId) ;
}
