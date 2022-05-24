package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.FaqDAO;
import com.web.vo.FaqVO;

public class FaqServiceImpl  implements FaqService{

	@Autowired
	FaqDAO faqDao;
	
	@Override
	public int InsertRecord(Object obj) {
		// TODO Auto-generated method stub
		FaqVO vo=(FaqVO)obj;
		return faqDao.insert(vo);
	}

	@Override
	public int getRecordCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Object> getRecordList(int startCount, int endCount, String faCategory) {
		// TODO Auto-generated method stub
		return faqDao.select(startCount, endCount, faCategory);
	}
	
	@Override
	public Object getContent(String faId) {
		// TODO Auto-generated method stub
		return faqDao.select(faId);
	}

	@Override
	public int deleteContent(String faId) {
		// TODO Auto-generated method stub
		return faqDao.delete(faId);
	}

	public int getRecordCount(String faCategory) {
		// TODO Auto-generated method stub
		return faqDao.getCount(faCategory);
	}

	@Override
	public int updateContent(Object obj) {
		// TODO Auto-generated method stub
		return faqDao.update(obj);
	}
	
	
}
