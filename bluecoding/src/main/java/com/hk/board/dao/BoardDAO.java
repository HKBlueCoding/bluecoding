package com.hk.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.board.vo.BoardVO;

@Repository
public class BoardDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<BoardVO> selectAllArticles() {
		// TODO Auto-generated method stub
		
		List<BoardVO> articlesList = sqlSession.selectList("mapper.board.selectAllBoardList");
		
		return articlesList;
	}

	public int addArticle(BoardVO boardVO) {
		// TODO Auto-generated method stub

		int ret = sqlSession.insert("mapper.board.insertArticle2", boardVO);
		return ret;
	}

	public BoardVO selectArticle(int articleNO) {
		// TODO Auto-generated method stub
		
		BoardVO boardVO = sqlSession.selectOne("mapper.board.selectOneArticle", articleNO);
		return boardVO;
	}

	public int updateArticle(BoardVO boardVO) {
		// TODO Auto-generated method stub
		
		int ret = sqlSession.update("mapper.board.updateArticle", boardVO);
		return ret;
	}
	
	public int deleteArticle(int articleNO) {
		
		int ret = sqlSession.update("mapper.board.DeleteArticle", articleNO);
		return 0;
	}

}