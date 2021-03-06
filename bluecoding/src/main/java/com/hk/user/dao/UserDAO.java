package com.hk.user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.hk.coinhistory.vo.CoinHistoryVO;
import com.hk.user.vo.UserVO;

@Repository
public class UserDAO {

	private static final Logger logger = LoggerFactory.getLogger(UserDAO.class);

	@Autowired
	SqlSession sqlSession;

	public int addUser(UserVO userVO) {
		// TODO Auto-generated method stub
		logger.debug("[userVO]" + userVO);
		int ret = sqlSession.insert("mapper.user.insertUser", userVO);

		return ret;
	}

	public UserVO isExisted(UserVO userVO) {
		// TODO Auto-generated method stub
		userVO = sqlSession.selectOne("mapper.user.isExisted", userVO);
		return userVO;
	}

	public UserVO dupId(String id) {
		// TODO Auto-generated method stub
		UserVO userVO = sqlSession.selectOne("mapper.user.dupId", id);
		return userVO;
	}

	public int updateCoin(CoinHistoryVO coinHistoryVO) {
		// TODO Auto-generated method stub
		
		int ret = sqlSession.update("mapper.user.updateCoin", coinHistoryVO);
		
		return ret;
	}
	
	// 아이디 찾기
	public UserVO findId(UserVO userVO) {
		
		userVO = sqlSession.selectOne("mapper.user.findId" , userVO);
		return userVO;
	}
	
	// 비밀번호 찾기
	public UserVO findPwd(UserVO userVO) {
		// TODO Auto-generated method stub
		userVO = sqlSession.selectOne("mapper.user.findPwd" , userVO);
		return userVO;
	}

	// 코인 지불
	public int minusCoin(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update("mapper.user.minusCoin", map);
	}

	public int updateRefund(CoinHistoryVO coinHistoryVO) {
		// TODO Auto-generated method stub
		return sqlSession.update("mapper.user.updateRefund", coinHistoryVO);
	}

	public int updateGauge(String id) {
		// TODO Auto-generated method stub
		return sqlSession.update("mapper.user.updateGauge", id);
	}

	
	/*
	 * // [ 로그인 사용자가 쓴 글 조회] public List<HashMap<String, String>>
	 * selectChest(HashMap param) {
	 * 
	 * return sqlSession.selectList("mapper.chest.selectChest", param); }
	 */

}
