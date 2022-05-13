package com.web.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.DigitalMovieVO;

public class DigitalMovieDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace="mapper.digitalMv";
	
	public int insert(DigitalMovieVO vo) {
		vo.setCategory();
		vo.setProgram();
		return sqlSession.insert(namespace+".insert", vo);
	}
	
	public int getCount() {
		return sqlSession.selectOne(namespace+".count");
	}
	
	public List<DigitalMovieVO> select(){
		return sqlSession.selectList(namespace+".selectList");
	}
}
