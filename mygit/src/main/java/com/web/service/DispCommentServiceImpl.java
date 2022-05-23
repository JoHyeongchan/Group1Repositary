package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.DispCommentDAO;
import com.web.vo.DispCommentVO;

public class DispCommentServiceImpl implements DispCommentService{

	@Autowired
	DispCommentDAO dispCommentDao;
	
	@Override
	public int InsertRecord(Object obj) {
		// TODO Auto-generated method stub
		DispCommentVO vo=(DispCommentVO)obj;
		vo.setCmUserId("test");
		return dispCommentDao.insert(vo);
	}

	@Override
	public int getRecordCount() {
		// TODO Auto-generated method stub
		return dispCommentDao.getCount();
	}

	@Override
	public List<Object> getRecordList(int startCount, int endCount) {
		// TODO Auto-generated method stub
		return dispCommentDao.select(startCount, endCount);
	}

	@Override
	public Object getContent(String cmId) {
		// TODO Auto-generated method stub
		return dispCommentDao.select(cmId);
	}

	@Override
	public int deleteContent(String cmId) {
		// TODO Auto-generated method stub
		return dispCommentDao.delete(cmId);
	}

	@Override
	public int updateContent(Object obj) {
		// TODO Auto-generated method stub
		DispCommentVO vo=(DispCommentVO)obj;
		return dispCommentDao.update(vo);
	}

	@Override
	public void updateHits(String cmId) {
		// TODO Auto-generated method stub
		dispCommentDao.updateHits(cmId);
	}

	
	
}
