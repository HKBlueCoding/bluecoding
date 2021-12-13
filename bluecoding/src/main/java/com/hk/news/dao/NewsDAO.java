package com.hk.news.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.news.vo.NewsVO;

@Repository
public class NewsDAO {
	
	@Autowired
	SqlSession sqlSession;

	public int addArticleNews(NewsVO newsVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.news.insertNews", newsVO);
		return ret;
	}

	public List<NewsVO> listNoticeNews() {
		// TODO Auto-generated method stub
		List<NewsVO> newsList = sqlSession.selectList("mapper.news.selectAllNoticeNews");
		return newsList;
	}
	
	public List<NewsVO> listEventNews() {
		// TODO Auto-generated method stub
		List<NewsVO> newsList = sqlSession.selectList("mapper.news.selectAllEventNews");
		return newsList;
	}	

	public NewsVO oneNews(int newsNO) {
		// TODO Auto-generated method stub
		NewsVO newsVO = sqlSession.selectOne("mapper.news.OneNews", newsNO);
		return newsVO;
	}

	public int updateArticleNews(NewsVO newsVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.update("mapper.news.updateNews", newsVO);
		return ret;
	}

}
