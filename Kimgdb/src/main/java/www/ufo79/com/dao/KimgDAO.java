package www.ufo79.com.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import www.ufo79.com.vo.KimgPersonVO;
import www.ufo79.com.vo.KimgPhotoVO;

@Repository
public class KimgDAO extends SqlSessionDaoSupport{
	public KimgPersonVO selectPasswordPerson(KimgPersonVO vo){
		return getSqlSession().selectOne("mapper.selectPasswordPerson", vo);
	}
	
	public List<KimgPersonVO> selectAllPerson(){
		return getSqlSession().selectList("mapper.selectAllPerson");
	}
	
	public KimgPersonVO selectOnePerson(KimgPersonVO vo){
		return getSqlSession().selectOne("mapper.selectOnePerson", vo);
	}
	
	public int insertPerson(KimgPersonVO vo){
		return getSqlSession().insert("mapper.insertPerson", vo);
	}
	
	public int updatePerson(KimgPersonVO vo){
		return getSqlSession().update("mapper.updatePerson", vo);
	}
	
	public int insertPhoto(KimgPhotoVO vo){
		return getSqlSession().insert("mapper.insertPhoto", vo);
	}
	
	public List<KimgPhotoVO> selectPhotoByParam(KimgPhotoVO vo){
		return getSqlSession().selectList("mapper.selectPhotoByParam", vo);
	}
}
