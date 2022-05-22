package com.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.DispCommentVO;
//import com.web.vo.QnaVO;

public class DispCommentDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace="mapper.dispcomment";
	
	public int insert(DispCommentVO vo) {
		return sqlSession.insert(namespace+".insert", vo);
	}
	
	public int insertReply(DispCommentVO vo) {
		
		return sqlSession.insert(namespace+".insertReply", vo);
	}

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

	public Object select(String cmId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".content",cmId);
	}
/*
	public int updateReply(int qGroup, int qOrigin) {
		// TODO Auto-generated method stub
		Map<String,String> param=new HashMap<String, String>();
		param.put("group", String.valueOf(qGroup));
		param.put("origin", String.valueOf(qOrigin));
		return sqlSession.update(namespace+".updateReply", param);
	}
*/
	public int delete(String cmId) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+".delete",cmId);
	}

	public int update(DispCommentVO vo) {
		// TODO Auto-generated method stub
		
		return sqlSession.update(namespace+".update", vo);
	}

	public Object updateHits(String cmId) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+".updateHits", cmId);
	}

}
