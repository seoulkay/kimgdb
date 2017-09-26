package www.ufo79.com.vo;

import java.util.Date;

public class KimgPersonVO extends KimgPhotoVO{
	private int nPerCnt;
	private String cPerId;
	private String cPerPwd;
	private String cPerName;
	private String cPerCom;
	private String cPerPos;
	private String cPerCon;
	private String cPerEmail;
	private Date dPerCrt;
	private String cPerCrtUsr;
	private Date dPerMod;
	private String cPerModUsr;
	private int nPerDel;
	
	//조인
	private int nComCnt;
	private String cComName;
	
	//인풋
	private String photoUid;
	
	public int getnPerCnt() {
		return nPerCnt;
	}
	public void setnPerCnt(int nPerCnt) {
		this.nPerCnt = nPerCnt;
	}
	public String getcPerId() {
		return cPerId;
	}
	public void setcPerId(String cPerId) {
		this.cPerId = cPerId;
	}
	public String getcPerPwd() {
		return cPerPwd;
	}
	public void setcPerPwd(String cPerPwd) {
		this.cPerPwd = cPerPwd;
	}
	public String getcPerName() {
		return cPerName;
	}
	public void setcPerName(String cPerName) {
		this.cPerName = cPerName;
	}
	public String getcPerCom() {
		return cPerCom;
	}
	public void setcPerCom(String cPerCom) {
		this.cPerCom = cPerCom;
	}
	public String getcPerPos() {
		return cPerPos;
	}
	public void setcPerPos(String cPerPos) {
		this.cPerPos = cPerPos;
	}
	public String getcPerCon() {
		return cPerCon;
	}
	public void setcPerCon(String cPerCon) {
		this.cPerCon = cPerCon;
	}
	public String getcPerEmail() {
		return cPerEmail;
	}
	public void setcPerEmail(String cPerEmail) {
		this.cPerEmail = cPerEmail;
	}
	public Date getdPerCrt() {
		return dPerCrt;
	}
	public void setdPerCrt(Date dPerCrt) {
		this.dPerCrt = dPerCrt;
	}
	public String getcPerCrtUsr() {
		return cPerCrtUsr;
	}
	public void setcPerCrtUsr(String cPerCrtUsr) {
		this.cPerCrtUsr = cPerCrtUsr;
	}
	public Date getdPerMod() {
		return dPerMod;
	}
	public void setdPerMod(Date dPerMod) {
		this.dPerMod = dPerMod;
	}
	public String getcPerModUsr() {
		return cPerModUsr;
	}
	public void setcPerModUsr(String cPerModUsr) {
		this.cPerModUsr = cPerModUsr;
	}
	public int getnPerDel() {
		return nPerDel;
	}
	public void setnPerDel(int nPerDel) {
		this.nPerDel = nPerDel;
	}
	public int getnComCnt() {
		return nComCnt;
	}
	public void setnComCnt(int nComCnt) {
		this.nComCnt = nComCnt;
	}
	public String getcComName() {
		return cComName;
	}
	public void setcComName(String cComName) {
		this.cComName = cComName;
	}
	public String getPhotoUid() {
		return photoUid;
	}
	public void setPhotoUid(String photoUid) {
		this.photoUid = photoUid;
	}
	
	
}
