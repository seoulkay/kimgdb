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
	
	
	//조인 벨류
	private String cTstName;
	private String cTtpName;
	
	
	
	
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
	

}
