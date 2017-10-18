package www.ufo79.com.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import www.ufo79.com.vo.KimgCategoryVO;
import www.ufo79.com.vo.KimgCompanyVO;
import www.ufo79.com.vo.KimgDashVO;
import www.ufo79.com.vo.KimgDepartmentVO;
import www.ufo79.com.vo.KimgEventVO;
import www.ufo79.com.vo.KimgItemVO;
import www.ufo79.com.vo.KimgPersonVO;
import www.ufo79.com.vo.KimgPhotoVO;
import www.ufo79.com.vo.KimgProductVO;
import www.ufo79.com.vo.KimgSportVO;
import www.ufo79.com.vo.KimgTaskStatusVO;
import www.ufo79.com.vo.KimgTaskTypeVO;
import www.ufo79.com.vo.KimgTaskVO;
import www.ufo79.com.vo.KimgVenueVO;

@Repository
public class KimgDAO extends SqlSessionDaoSupport{
	public KimgPersonVO selectPasswordPerson(KimgPersonVO vo){
		return getSqlSession().selectOne("mapper.selectPasswordPerson", vo);
	}
	
	public List<KimgPersonVO> selectAllPerson(){
		return getSqlSession().selectList("mapper.selectAllPerson");
	}
	
	public List<KimgPersonVO> selectAllPersonSrc(String vo){
		return getSqlSession().selectList("mapper.selectAllPersonSrc", vo);
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
	
	public List<KimgCompanyVO> selectAllCompany(){
		return getSqlSession().selectList("mapper.selectAllCompany");
	}
	
	public int updatePhotoByRefCodeToZero(KimgPhotoVO vo){
		return getSqlSession().update("mapper.updatePhotoByRefCodeToZero", vo);
	}
	
	public List<KimgItemVO> selectAllItem(){
		return getSqlSession().selectList("mapper.selectAllItem");
	}
	
	public List<KimgProductVO> selectAllProduct(){
		return getSqlSession().selectList("mapper.selectAllProduct");
	}
	public List<KimgCategoryVO> selectAllCategory(){
		return getSqlSession().selectList("mapper.selectAllCategory");
	}
	
	public List<KimgEventVO> selectAllEvent(){
		return getSqlSession().selectList("mapper.selectAllEvent");
	}
	
	public List<KimgSportVO> selectAllSport(){
		return getSqlSession().selectList("mapper.selectAllSport");
	}
	
	public List<KimgDepartmentVO> selectAllDepartment(){
		return getSqlSession().selectList("mapper.selectAllDepartment");
	}
	
	public List<KimgVenueVO> selectAllVenue(){
		return getSqlSession().selectList("mapper.selectAllVenue");
	}
	
	public List<String> selectAllcItmMate(){
		return getSqlSession().selectList("mapper.selectAllcItmMate");
	}
	
	public List<KimgItemVO> selectAllItemSrcPar(KimgItemVO vo){
		return getSqlSession().selectList("mapper.selectAllItemSrcPar", vo);
	}
	
	public KimgItemVO selectAllItemDetail(int vo){
		return getSqlSession().selectOne("mapper.selectAllItemDetail", vo);
	}
	
	public int insertProduct(KimgProductVO vo){
		return getSqlSession().insert("mapper.insertProduct", vo);
	}
	
	public List<KimgProductVO> selectProductOne(int vo){
		return getSqlSession().selectList("mapper.selectProductOne", vo);
	}
	
	public List<KimgTaskVO> selectTaskOne(int vo){
		return getSqlSession().selectList("mapper.selectTaskOne", vo);
	}
	
	public int updateProduct(KimgProductVO vo){
		return getSqlSession().update("mapper.updateProduct", vo);
	}
	
	public int deletePhoto(Integer vo){
		return getSqlSession().update("mapper.deletePhoto", vo);
	}
	
	public List<KimgProductVO> selectAllProductSrcPar(KimgProductVO vo){
		return getSqlSession().selectList("mapper.selectAllProductSrcPar", vo);
	}
	
	public List<KimgItemVO> selectItemOne(int vo){
		return getSqlSession().selectList("mapper.selectItemOne", vo);
	}
	
	public int insertItem(KimgItemVO vo){
		return getSqlSession().insert("mapper.insertItem", vo);
	}
	
	public int updateItem(KimgItemVO vo){
		return getSqlSession().update("mapper.updateItem", vo);
	}
	
	public List<KimgTaskStatusVO> selectTaskStatus(){
		return getSqlSession().selectList("mapper.selectTaskStatus");
	}
	
	public List<KimgTaskTypeVO> selectTaskType(){
		return getSqlSession().selectList("mapper.selectTaskType");
	}
	
	public int updateTask(KimgTaskVO vo){
		return getSqlSession().update("mapper.updateTask", vo);
	}
	
	public int insertTask(KimgTaskVO vo){
		return getSqlSession().insert("mapper.insertTask", vo);
	}
	
	public List<KimgTaskVO> selectTask(int vo){
		return getSqlSession().selectList("mapper.selectTask", vo);
	}
	
	public List<KimgTaskVO> selectAllTask(){
		return getSqlSession().selectList("mapper.selectAllTask");
	}
	
	public KimgDashVO selectLateDash(){
		return getSqlSession().selectOne("mapper.selectLateDash");
	}
}