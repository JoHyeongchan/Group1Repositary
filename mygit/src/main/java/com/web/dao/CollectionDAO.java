package com.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.CollectionVO;
import com.web.vo.DigitalMovieVO;

public class CollectionDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace="mapper.collection";
	
	public int insert(CollectionVO vo) {
		vo.setCategory();
		return sqlSession.insert(namespace+".insert", vo);
	}
	
	public int getCount() {
		return sqlSession.selectOne(namespace+".count");
	}
	
	public List<Object> select(int startCount, int endCount){
		Map<String, String> param=new HashMap<String, String>();
		param.put("start", String.valueOf(startCount));
		param.put("end", String.valueOf(endCount));
		
		return sqlSession.selectList(namespace+".selectList",param);
	}
	
	public CollectionVO select(String coId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".selectContent", coId);
	}
	
	public void updateHits(String coId) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+".updateHit", coId);
	}
	/*
	public DigitalMovieVO select(String dmId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".selectContent", dmId);
	}
	
	public int delete(String dmId) {
		return sqlSession.delete(namespace+".deleteContent", dmId);
	}
	
	public int update(Object obj) {
		DigitalMovieVO vo=(DigitalMovieVO)obj;
		vo.setCategory();
		vo.setProgram();
		return sqlSession.update(namespace+".update", vo);
	}
	
	public String getOldFileName(String dmId){
		return sqlSession.selectOne(namespace+".getSfile", dmId);
	}

	*/

	
}
