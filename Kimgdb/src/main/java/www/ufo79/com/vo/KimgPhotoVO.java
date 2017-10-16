package www.ufo79.com.vo;

import java.util.Date;

public class KimgPhotoVO {
	private int nPhoCnt;
	private String cPhoType;
	private int nRefCode;
	private String cPhoName;
	private Date dPhoCrt;
	private String cPhoCrtUsr;
	private Date dPhoMod;
	private String cPhoModUsr;
	private int nPhoDel;
	
	//인풋
	private String photoUid;
	
	public String getPhotoUid() {
		return photoUid;
	}
	public void setPhotoUid(String photoUid) {
		this.photoUid = photoUid;
	}
	public int getnPhoCnt() {
		return nPhoCnt;
	}
	public void setnPhoCnt(int nPhoCnt) {
		this.nPhoCnt = nPhoCnt;
	}
	public String getcPhoType() {
		return cPhoType;
	}
	public void setcPhoType(String cPhoType) {
		this.cPhoType = cPhoType;
	}
	public int getnRefCode() {
		return nRefCode;
	}
	public void setnRefCode(int nRefCode) {
		this.nRefCode = nRefCode;
	}
	public String getcPhoName() {
		return cPhoName;
	}
	public void setcPhoName(String cPhoName) {
		this.cPhoName = cPhoName;
	}
	public Date getdPhoCrt() {
		return dPhoCrt;
	}
	public void setdPhoCrt(Date dPhoCrt) {
		this.dPhoCrt = dPhoCrt;
	}
	public String getcPhoCrtUsr() {
		return cPhoCrtUsr;
	}
	public void setcPhoCrtUsr(String cPhoCrtUsr) {
		this.cPhoCrtUsr = cPhoCrtUsr;
	}
	public Date getdPhoMod() {
		return dPhoMod;
	}
	public void setdPhoMod(Date dPhoMod) {
		this.dPhoMod = dPhoMod;
	}
	public String getcPhoModUsr() {
		return cPhoModUsr;
	}
	public void setcPhoModUsr(String cPhoModUsr) {
		this.cPhoModUsr = cPhoModUsr;
	}
	public int getnPhoDel() {
		return nPhoDel;
	}
	public void setnPhoDel(int nPhoDel) {
		this.nPhoDel = nPhoDel;
	}
	
	
}
