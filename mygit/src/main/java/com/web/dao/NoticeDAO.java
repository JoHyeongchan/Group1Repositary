package com.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.NoticeVO;
//import com.web.vo.QnaVO;

public class NoticeDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace="mapper.notice";
	
	public int insert(NoticeVO vo) {
		
		return sqlSession.insert(namespace+".insert", vo);
	}
	/*
	public int insertReply(QnaVO vo) {
		String str=vo.getqContent();
		str.replace("\r\n", "<br>");
		vo.setqContent(str);
		return sqlSession.insert(namespace+".insertReply", vo);
	}
	*/
	public int getCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".count");
	}
	
	public List<Object> select(int startCount, int endCount){
		Map<String, String> param=new HashMap<String, String>();
		param.put("start", String.valueOf(startCount));
		param.put("end", String.valueOf(endCount));
		
		return sqlSession.selectList(namespace+".selectList", param);
	}
	
	public Object select(String nId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".content",nId);
	}


	public int update(NoticeVO vo) {
		// TODO Auto-generated method stub
		
		return sqlSession.update(namespace+".update", vo);
	}
	
	
	public int delete(String nId) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+".delete",nId);
	}
	
	public Object updateHits(String nId) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+".updateHits", nId);
	}
	
	

	
}
