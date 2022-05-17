package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.CollectionDAO;
import com.web.vo.CollectionVO;

public class CollectionServiceImpl implements CollectionService{

	@Autowired
	CollectionDAO collectionDao;
	
	@Override
	public int InsertRecord(Object obj) {
		// TODO Auto-generated method stub
		CollectionVO vo=(CollectionVO) obj;
		return collectionDao.insert(vo);
	}

	@Override
	public int getRecordCount() {
		// TODO Auto-generated method stub
		return collectionDao.getCount();
	}

	@Override
	public List<Object> getRecordList(int startCount, int endCount) {
		// TODO Auto-generated method stub
		return collectionDao.select(startCount, endCount);
	}
	@Override
	public CollectionVO getContent(String coId) {
		// TODO Auto-generated method stub
		return collectionDao.select(coId);
	}

	public void updateHits(String coId) {
		// TODO Auto-generated method stub
		collectionDao.updateHits(coId);
	}
	
}
