package com.web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.DigitalMovieDAO;
import com.web.vo.DigitalMovieVO;

public class DigitalMovieServiceImpl  implements DigitalMovieService{

	@Autowired
	DigitalMovieDAO digitalMovieDao;
	
	public int InsertRecord(Object obj) {
		DigitalMovieVO vo=(DigitalMovieVO) obj;
		return digitalMovieDao.insert(vo);
	}
	
	public int getRecordCount() {
		return digitalMovieDao.getCount();
	}
	
	public List<Object> getRecordList(int startCount, int endCount){		
		return digitalMovieDao.select(startCount, endCount);		
	}
	
	public Object getContent(String dmId) {
		return digitalMovieDao.select(dmId);	
	}
	
	public int deleteContent(String dmId) {
		return digitalMovieDao.delete(dmId);
	}
	
	public int updateContent(Object obj) {
		return digitalMovieDao.update(obj);
	}
	
	public void updateHits(String dmId) {
		digitalMovieDao.updateHits(dmId);
	}
}
