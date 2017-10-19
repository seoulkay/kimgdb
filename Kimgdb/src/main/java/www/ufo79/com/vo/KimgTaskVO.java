package www.ufo79.com.vo;

import java.util.Date;

public class KimgTaskVO extends KimgPhotoVO{
	private int nTskCnt;
	private int nRefItm;
	private String cTskType;
	private String cTskComp;
	private String cTskNote;
	private String cTskStatus;
	private String cTskCheck;
	private Date dTskCrt;
	private String cTskCrtUsr;
	private Date dTskMod;
	private String cTskModUsr;
	private int nTskDel;
	
	private String redirect;
	//조인 벨류
	private String cTstName;
	private String cTstType;
	private String cTtpName;
	private String cTtpType;
	
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
	
	private int nEvnCnt;
	private String cEvnCode;
	private String cEvnName;
	
	private int nCatCnt;
	private String cCatType;
	private String cCatName;
	
	private int nPrdCnt;
	private String cPrdCode;
	private String cPrdName;
	private String cPrdLocalName;
	private String cPrdCat;
	private String cPrdDesc;
	private Date dPrdCrt;
	private String cPrdCrtUsr;
	private Date dPrdMod;
	private String cPrdModUsr;
	private int nPrdDel;
	
	public String getcTstType() {
		return cTstType;
	}
	public void setcTstType(String cTstType) {
		this.cTstType = cTstType;
	}
	public String getcTstName() {
		return cTstName;
	}
	public void setcTstName(String cTstName) {
		this.cTstName = cTstName;
	}
	public String getcTtpName() {
		return cTtpName;
	}
	public void setcTtpName(String cTtpName) {
		this.cTtpName = cTtpName;
	}
	public int getnTskCnt() {
		return nTskCnt;
	}
	public void setnTskCnt(int nTskCnt) {
		this.nTskCnt = nTskCnt;
	}
	public int getnRefItm() {
		return nRefItm;
	}
	public void setnRefItm(int nRefItm) {
		this.nRefItm = nRefItm;
	}
	public String getcTskType() {
		return cTskType;
	}
	public void setcTskType(String cTskType) {
		this.cTskType = cTskType;
	}
	public String getcTskComp() {
		return cTskComp;
	}
	public void setcTskComp(String cTskComp) {
		this.cTskComp = cTskComp;
	}
	public String getcTskNote() {
		return cTskNote;
	}
	public void setcTskNote(String cTskNote) {
		this.cTskNote = cTskNote;
	}
	public String getcTskStatus() {
		return cTskStatus;
	}
	public void setcTskStatus(String cTskStatus) {
		this.cTskStatus = cTskStatus;
	}
	public String getcTskCheck() {
		return cTskCheck;
	}
	public void setcTskCheck(String cTskCheck) {
		this.cTskCheck = cTskCheck;
	}
	public Date getdTskCrt() {
		return dTskCrt;
	}
	public void setdTskCrt(Date dTskCrt) {
		this.dTskCrt = dTskCrt;
	}
	public String getcTskCrtUsr() {
		return cTskCrtUsr;
	}
	public void setcTskCrtUsr(String cTskCrtUsr) {
		this.cTskCrtUsr = cTskCrtUsr;
	}
	public Date getdTskMod() {
		return dTskMod;
	}
	public void setdTskMod(Date dTskMod) {
		this.dTskMod = dTskMod;
	}
	public String getcTskModUsr() {
		return cTskModUsr;
	}
	public void setcTskModUsr(String cTskModUsr) {
		this.cTskModUsr = cTskModUsr;
	}
	public int getnTskDel() {
		return nTskDel;
	}
	public void setnTskDel(int nTskDel) {
		this.nTskDel = nTskDel;
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
	public String getcItmCom() {
		return cItmCom;
	}
	public void setcItmCom(String cItmCom) {
		this.cItmCom = cItmCom;
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
	public String getRedirect() {
		return redirect;
	}
	public void setRedirect(String redirect) {
		this.redirect = redirect;
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
	public int getnPrdCnt() {
		return nPrdCnt;
	}
	public void setnPrdCnt(int nPrdCnt) {
		this.nPrdCnt = nPrdCnt;
	}
	public String getcPrdCode() {
		return cPrdCode;
	}
	public void setcPrdCode(String cPrdCode) {
		this.cPrdCode = cPrdCode;
	}
	public String getcPrdName() {
		return cPrdName;
	}
	public void setcPrdName(String cPrdName) {
		this.cPrdName = cPrdName;
	}
	public String getcPrdLocalName() {
		return cPrdLocalName;
	}
	public void setcPrdLocalName(String cPrdLocalName) {
		this.cPrdLocalName = cPrdLocalName;
	}
	public String getcPrdCat() {
		return cPrdCat;
	}
	public void setcPrdCat(String cPrdCat) {
		this.cPrdCat = cPrdCat;
	}
	public String getcPrdDesc() {
		return cPrdDesc;
	}
	public void setcPrdDesc(String cPrdDesc) {
		this.cPrdDesc = cPrdDesc;
	}
	public Date getdPrdCrt() {
		return dPrdCrt;
	}
	public void setdPrdCrt(Date dPrdCrt) {
		this.dPrdCrt = dPrdCrt;
	}
	public String getcPrdCrtUsr() {
		return cPrdCrtUsr;
	}
	public void setcPrdCrtUsr(String cPrdCrtUsr) {
		this.cPrdCrtUsr = cPrdCrtUsr;
	}
	public Date getdPrdMod() {
		return dPrdMod;
	}
	public void setdPrdMod(Date dPrdMod) {
		this.dPrdMod = dPrdMod;
	}
	public String getcPrdModUsr() {
		return cPrdModUsr;
	}
	public void setcPrdModUsr(String cPrdModUsr) {
		this.cPrdModUsr = cPrdModUsr;
	}
	public int getnPrdDel() {
		return nPrdDel;
	}
	public void setnPrdDel(int nPrdDel) {
		this.nPrdDel = nPrdDel;
	}
	public String getcTtpType() {
		return cTtpType;
	}
	public void setcTtpType(String cTtpType) {
		this.cTtpType = cTtpType;
	}
	

}
