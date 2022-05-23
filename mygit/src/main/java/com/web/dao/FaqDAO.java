package com.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.CollectionVO;
import com.web.vo.FaqVO;

public class FaqDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace="mapper.faq";
	
	public int insert(FaqVO vo) {
		
		return sqlSession.insert(namespace+".insert", vo);
	}
	
	public int getCount(String faCategory) {
		return sqlSession.selectOne(namespace+".count",faCategory);
	}
	
	public List<Object> select(int startCount, int endCount, String faCategory){
		Map<String, String> param=new HashMap<String, String>();
		param.put("start", String.valueOf(startCount));
		param.put("end", String.valueOf(endCount));
		param.put("category", faCategory);
		
		return sqlSession.selectList(namespace+".selectList",param);
	}
	/*
	public Object select(String coId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".selectContent", coId);
	}
	
	public void updateHits(String coId) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+".updateHit", coId);
	}
	
	public int delete(String coId) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+".deleteContent", coId);
	}


	public int update(Object obj) {
		// TODO Auto-generated method stub
		CollectionVO vo=(CollectionVO)obj;
		vo.setCategory();
		return sqlSession.update(namespace+".update", vo);		
	}*/
}
