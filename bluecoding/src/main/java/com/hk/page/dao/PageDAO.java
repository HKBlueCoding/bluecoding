package com.hk.page.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.page.vo.PageVO;

@Repository
public class PageDAO {

	@Autowired
	SqlSession sqlSession;

	public List<PageVO> listPage(int bookNO) {
		// TODO Auto-generated method stub
		List<PageVO> pageVO = sqlSession.selectList("mapper.page.selectAllPage", bookNO);
		
		return pageVO;
	}

	public int pageAdd(PageVO pageVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.page.insertPage", pageVO);
		return ret;
	}

	public PageVO pageList(int pageNO) {
		// TODO Auto-generated method stub
		PageVO pageVO = sqlSession.selectOne("mapper.page.selectOnePage", pageNO);
		return pageVO;
	}

	public int bookViewUpdate(PageVO pageVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.update("mapper.page.viewUpdateBook", pageVO);
		return ret;
	}

	public Integer selectSeries(int bookNO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.page.selectSeries", bookNO);
	}


}
