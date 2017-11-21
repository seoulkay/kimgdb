package www.ufo79.com.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import www.ufo79.com.vo.TrrEod;
import www.ufo79.com.vo.TrrRaw;
import www.ufo79.com.vo.TrrSurvey;
import www.ufo79.com.vo.TrrUser;



@Repository
public class TrrDAO extends SqlSessionDaoSupport{
	public TrrUser selectPasswordPerson(TrrUser vo){
		return getSqlSession().selectOne("mapper2.selectUser", vo);
	}
	public int insertEod(TrrEod vo){
		return getSqlSession().insert("mapper2.insertEod", vo);
	}
	public int insertSurvey(TrrSurvey vo){
		return getSqlSession().insert("mapper2.insertSurvey", vo);
	}
	public List<TrrRaw> selectRaw(String vo){
		return getSqlSession().selectList("mapper2.selectRaw", vo);
	}
	public TrrRaw selectRawOne(int vo){
		return getSqlSession().selectOne("mapper2.selectRawOne", vo);
	}
	public List<TrrSurvey> selectSurveyList(String vo){
		return getSqlSession().selectList("mapper2.selectSurveyList", vo);
	}
}
