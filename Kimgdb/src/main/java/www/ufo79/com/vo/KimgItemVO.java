package www.ufo79.com.vo;

import java.util.Date;
import java.util.List;

public class KimgItemVO extends KimgProductVO{
	private int nItmCnt;
	private String cItmCode;
	private String cItmCom;
	private String cItmVenue;
	private String cItmSport;
	private String cItmDept;
	private String cItmEvent;
	private String cItmCate;
	private String cItmProd;
	private String cItmMate;
	private String cItmFloor;
	private String cItmLocation;
	private String cItmWidth;
	private String cItmHeight;
	private String cItmDimen;
	private String cItmQty1;
	private String cItemUnit1;
	private String cItmQty2;
	private String cItmUnit2;
	private String cItmDesc;
	private String cItmUnitPrice1;
	private String cItmPrice1;
	private String cItmMateUnitPrice1;
	private String cItmMatePrice1;
	private String cImtLaborUnitPrice1;
	private String cItmLaborPrice1;
	private String cItmUnitPrice2;
	private String cItmPrice2;
	private String cItmMateUnitPrice2;
	private String cItmMatePrice2;
	private String cImtLaborUnitPrice2;
	private String cItmLaborPrice2;
	private Date dItmCrt;
	private String cItmCrtUsr;
	private Date dItmMod;
	private String cItmModUsr;
	private int nItmDel;
	
	private String cItmPrePho;
	private String cItmPosPho;
	private String cItmDesPho;
	
	
	private int nManStatus;
	private int nInsStatus;
	private int nDesStatus;
	private int nDelStatus;
	private int nIncStatus;
	//조인 밸류
	private int nCatCnt;
	private String cCatType;
	private String cCatName;
	 
	private int nEvnCnt;
	private String cEvnCode;
	private String cEvnName;
	 
	private int nVenCnt;
	private String cVenCode;
	private String cVenComp;
	private String cVenName;

	private int nSptCnt;
	private String cSptCode;
	private String cSptName;
	 
	private int nDptCnt;
	private String cDptCode;
	private String cDptName;
	
	List<KimgPhotoVO> photos;
	
	//벌크 업로드, 
	private String td_numbers;
	private String cTstType;
	private String cTtpType;
	
	//사진 업로드
	private String photoUid2;
	private String phoType;
	
	//페이징
	private int nItmPage;
	private int nItmPageTemp;
	
	
	
	public int getnItmPageTemp() {
		return nItmPageTemp;
	}
	public void setnItmPageTemp(int nItmPageTemp) {
		this.nItmPageTemp = nItmPageTemp;
	}
	public int getnItmPage() {
		return nItmPage;
	}
	public void setnItmPage(int nItmPage) {
		this.nItmPage = nItmPage;
	}
	public String getPhotoUid2() {
		return photoUid2;
	}
	public void setPhotoUid2(String photoUid2) {
		this.photoUid2 = photoUid2;
	}
	public String getPhoType() {
		return phoType;
	}
	public void setPhoType(String phoType) {
		this.phoType = phoType;
	}
	public String getTd_numbers() {
		return td_numbers;
	}
	public void setTd_numbers(String td_numbers) {
		this.td_numbers = td_numbers;
	}
	public String getcTstType() {
		return cTstType;
	}
	public void setcTstType(String cTstType) {
		this.cTstType = cTstType;
	}
	public String getcTtpType() {
		return cTtpType;
	}
	public void setcTtpType(String cTtpType) {
		this.cTtpType = cTtpType;
	}
	public List<KimgPhotoVO> getPhotos() {
		return photos;
	}
	public void setPhotos(List<KimgPhotoVO> photos) {
		this.photos = photos;
	}
	public int getnItmCnt() {
		return nItmCnt;
	}
	public void setnItmCnt(int nItmCnt) {
		this.nItmCnt = nItmCnt;
	}
	public String getcItmCode() {
		return cItmCode;
	}
	public void setcItmCode(String cItmCode) {
		this.cItmCode = cItmCode;
	}
	public String getcItmVenue() {
		return cItmVenue;
	}
	public void setcItmVenue(String cItmVenue) {
		this.cItmVenue = cItmVenue;
	}
	public String getcItmSport() {
		return cItmSport;
	}
	public void setcItmSport(String cItmSport) {
		this.cItmSport = cItmSport;
	}
	public String getcItmDept() {
		return cItmDept;
	}
	public void setcItmDept(String cItmDept) {
		this.cItmDept = cItmDept;
	}
	public String getcItmEvent() {
		return cItmEvent;
	}
	public void setcItmEvent(String cItmEvent) {
		this.cItmEvent = cItmEvent;
	}
	public String getcItmCate() {
		return cItmCate;
	}
	public void setcItmCate(String cItmCate) {
		this.cItmCate = cItmCate;
	}
	public String getcItmProd() {
		return cItmProd;
	}
	public void setcItmProd(String cItmProd) {
		this.cItmProd = cItmProd;
	}
	public String getcItmMate() {
		return cItmMate;
	}
	public void setcItmMate(String cItmMate) {
		this.cItmMate = cItmMate;
	}
	public String getcItmFloor() {
		return cItmFloor;
	}
	public void setcItmFloor(String cItmFloor) {
		this.cItmFloor = cItmFloor;
	}
	public String getcItmLocation() {
		return cItmLocation;
	}
	public void setcItmLocation(String cItmLocation) {
		this.cItmLocation = cItmLocation;
	}
	public String getcItmWidth() {
		return cItmWidth;
	}
	public void setcItmWidth(String cItmWidth) {
		this.cItmWidth = cItmWidth;
	}
	public String getcItmHeight() {
		return cItmHeight;
	}
	public void setcItmHeight(String cItmHeight) {
		this.cItmHeight = cItmHeight;
	}
	public String getcItmDimen() {
		return cItmDimen;
	}
	public void setcItmDimen(String cItmDimen) {
		this.cItmDimen = cItmDimen;
	}
	public String getcItmQty1() {
		return cItmQty1;
	}
	public void setcItmQty1(String cItmQty1) {
		this.cItmQty1 = cItmQty1;
	}
	public String getcItemUnit1() {
		return cItemUnit1;
	}
	public void setcItemUnit1(String cItemUnit1) {
		this.cItemUnit1 = cItemUnit1;
	}
	public String getcItmQty2() {
		return cItmQty2;
	}
	public void setcItmQty2(String cItmQty2) {
		this.cItmQty2 = cItmQty2;
	}
	public String getcItmUnit2() {
		return cItmUnit2;
	}
	public void setcItmUnit2(String cItmUnit2) {
		this.cItmUnit2 = cItmUnit2;
	}
	public String getcItmDesc() {
		return cItmDesc;
	}
	public void setcItmDesc(String cItmDesc) {
		this.cItmDesc = cItmDesc;
	}
	public String getcItmUnitPrice1() {
		return cItmUnitPrice1;
	}
	public void setcItmUnitPrice1(String cItmUnitPrice1) {
		this.cItmUnitPrice1 = cItmUnitPrice1;
	}
	public String getcItmPrice1() {
		return cItmPrice1;
	}
	public void setcItmPrice1(String cItmPrice1) {
		this.cItmPrice1 = cItmPrice1;
	}
	public String getcItmMateUnitPrice1() {
		return cItmMateUnitPrice1;
	}
	public void setcItmMateUnitPrice1(String cItmMateUnitPrice1) {
		this.cItmMateUnitPrice1 = cItmMateUnitPrice1;
	}
	public String getcItmMatePrice1() {
		return cItmMatePrice1;
	}
	public void setcItmMatePrice1(String cItmMatePrice1) {
		this.cItmMatePrice1 = cItmMatePrice1;
	}
	public String getcImtLaborUnitPrice1() {
		return cImtLaborUnitPrice1;
	}
	public void setcImtLaborUnitPrice1(String cImtLaborUnitPrice1) {
		this.cImtLaborUnitPrice1 = cImtLaborUnitPrice1;
	}
	public String getcItmLaborPrice1() {
		return cItmLaborPrice1;
	}
	public void setcItmLaborPrice1(String cItmLaborPrice1) {
		this.cItmLaborPrice1 = cItmLaborPrice1;
	}
	public String getcItmUnitPrice2() {
		return cItmUnitPrice2;
	}
	public void setcItmUnitPrice2(String cItmUnitPrice2) {
		this.cItmUnitPrice2 = cItmUnitPrice2;
	}
	public String getcItmPrice2() {
		return cItmPrice2;
	}
	public void setcItmPrice2(String cItmPrice2) {
		this.cItmPrice2 = cItmPrice2;
	}
	public String getcItmMateUnitPrice2() {
		return cItmMateUnitPrice2;
	}
	public void setcItmMateUnitPrice2(String cItmMateUnitPrice2) {
		this.cItmMateUnitPrice2 = cItmMateUnitPrice2;
	}
	public String getcItmMatePrice2() {
		return cItmMatePrice2;
	}
	public void setcItmMatePrice2(String cItmMatePrice2) {
		this.cItmMatePrice2 = cItmMatePrice2;
	}
	public String getcImtLaborUnitPrice2() {
		return cImtLaborUnitPrice2;
	}
	public void setcImtLaborUnitPrice2(String cImtLaborUnitPrice2) {
		this.cImtLaborUnitPrice2 = cImtLaborUnitPrice2;
	}
	public String getcItmLaborPrice2() {
		return cItmLaborPrice2;
	}
	public void setcItmLaborPrice2(String cItmLaborPrice2) {
		this.cItmLaborPrice2 = cItmLaborPrice2;
	}
	public Date getdItmCrt() {
		return dItmCrt;
	}
	public void setdItmCrt(Date dItmCrt) {
		this.dItmCrt = dItmCrt;
	}
	public String getcItmCrtUsr() {
		return cItmCrtUsr;
	}
	public void setcItmCrtUsr(String cItmCrtUsr) {
		this.cItmCrtUsr = cItmCrtUsr;
	}
	public Date getdItmMod() {
		return dItmMod;
	}
	public void setdItmMod(Date dItmMod) {
		this.dItmMod = dItmMod;
	}
	public String getcItmModUsr() {
		return cItmModUsr;
	}
	public void setcItmModUsr(String cItmModUsr) {
		this.cItmModUsr = cItmModUsr;
	}
	public int getnItmDel() {
		return nItmDel;
	}
	public void setnItmDel(int nItmDel) {
		this.nItmDel = nItmDel;
	}
	public String getcItmCom() {
		return cItmCom;
	}
	public void setcItmCom(String cItmCom) {
		this.cItmCom = cItmCom;
	}
	public int getnCatCnt() {
		return nCatCnt;
	}
	public void setnCatCnt(int nCatCnt) {
		this.nCatCnt = nCatCnt;
	}
	public String getcCatType() {
		return cCatType;
	}
	public void setcCatType(String cCatType) {
		this.cCatType = cCatType;
	}
	public String getcCatName() {
		return cCatName;
	}
	public void setcCatName(String cCatName) {
		this.cCatName = cCatName;
	}
	public int getnEvnCnt() {
		return nEvnCnt;
	}
	public void setnEvnCnt(int nEvnCnt) {
		this.nEvnCnt = nEvnCnt;
	}
	public String getcEvnCode() {
		return cEvnCode;
	}
	public void setcEvnCode(String cEvnCode) {
		this.cEvnCode = cEvnCode;
	}
	public String getcEvnName() {
		return cEvnName;
	}
	public void setcEvnName(String cEvnName) {
		this.cEvnName = cEvnName;
	}
	public int getnVenCnt() {
		return nVenCnt;
	}
	public void setnVenCnt(int nVenCnt) {
		this.nVenCnt = nVenCnt;
	}
	public String getcVenCode() {
		return cVenCode;
	}
	public void setcVenCode(String cVenCode) {
		this.cVenCode = cVenCode;
	}
	public String getcVenComp() {
		return cVenComp;
	}
	public void setcVenComp(String cVenComp) {
		this.cVenComp = cVenComp;
	}
	public String getcVenName() {
		return cVenName;
	}
	public void setcVenName(String cVenName) {
		this.cVenName = cVenName;
	}
	public int getnSptCnt() {
		return nSptCnt;
	}
	public void setnSptCnt(int nSptCnt) {
		this.nSptCnt = nSptCnt;
	}
	public String getcSptCode() {
		return cSptCode;
	}
	public void setcSptCode(String cSptCode) {
		this.cSptCode = cSptCode;
	}
	public String getcSptName() {
		return cSptName;
	}
	public void setcSptName(String cSptName) {
		this.cSptName = cSptName;
	}
	public int getnDptCnt() {
		return nDptCnt;
	}
	public void setnDptCnt(int nDptCnt) {
		this.nDptCnt = nDptCnt;
	}
	public String getcDptCode() {
		return cDptCode;
	}
	public void setcDptCode(String cDptCode) {
		this.cDptCode = cDptCode;
	}
	public String getcDptName() {
		return cDptName;
	}
	public void setcDptName(String cDptName) {
		this.cDptName = cDptName;
	}
	public int getnManStatus() {
		return nManStatus;
	}
	public void setnManStatus(int nManStatus) {
		this.nManStatus = nManStatus;
	}
	public int getnInsStatus() {
		return nInsStatus;
	}
	public void setnInsStatus(int nInsStatus) {
		this.nInsStatus = nInsStatus;
	}
	public int getnDesStatus() {
		return nDesStatus;
	}
	public void setnDesStatus(int nDesStatus) {
		this.nDesStatus = nDesStatus;
	}
	public int getnIncStatus() {
		return nIncStatus;
	}
	public void setnIncStatus(int nIncStatus) {
		this.nIncStatus = nIncStatus;
	}
	public int getnDelStatus() {
		return nDelStatus;
	}
	public void setnDelStatus(int nDelStatus) {
		this.nDelStatus = nDelStatus;
	}
	public String getcItmPrePho() {
		return cItmPrePho;
	}
	public void setcItmPrePho(String cItmPrePho) {
		this.cItmPrePho = cItmPrePho;
	}
	
	public String getcItmDesPho() {
		return cItmDesPho;
	}
	public void setcItmDesPho(String cItmDesPho) {
		this.cItmDesPho = cItmDesPho;
	}
	public String getcItmPosPho() {
		return cItmPosPho;
	}
	public void setcItmPosPho(String cItmPosPho) {
		this.cItmPosPho = cItmPosPho;
	}
	
	
}
