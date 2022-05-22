package com.web.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.NoticeDAO;
import com.web.vo.NoticeVO;

public class NoticeServiceImpl implements NoticeService{

	@Autowired
	NoticeDAO noticeDao;
	
	@Override
	public int InsertRecord(Object obj) {
		// TODO Auto-generated method stub
		NoticeVO vo= (NoticeVO)obj;
		vo.setnWriter("test");
		return noticeDao.insert(vo);
	}

	@Override
	public int getRecordCount() {
		// TODO Auto-generated method stub
		return noticeDao.getCount();
	}

	@Override
	public List<Object> getRecordList(int startCount, int endCount) {
		// TODO Auto-generated method stub
		return noticeDao.select(startCount, endCount);
	}

	@Override
	public Object getContent(String nId) {
		// TODO Auto-generated method stub
		return noticeDao.select(nId);
	}

	@Override
	public int deleteContent(String nId) {
		// TODO Auto-generated method stub
		return noticeDao.delete(nId);
	}

	@Override
	public int updateContent(Object obj) {
		// TODO Auto-generated method stub
		NoticeVO vo=(NoticeVO)obj;
		return noticeDao.update(vo);
	}

	@Override
	public void updateHits(String nId) {
		// TODO Auto-generated method stub
		noticeDao.updateHits(nId);
	}

	
	
	
}
