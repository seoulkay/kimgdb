package www.ufo79.com.vo;

public class KimgProgressVO {
	private String Venue;
	private String vCode;
	private int Progress;
	private int manProgress;
	private int delProgress;
	private int insProgress;
	private int desProgress;
	
	public String getVenue() {
		return Venue;
	}
	public void setVenue(String venue) {
		Venue = venue;
	}
	public String getvCode() {
		return vCode;
	}
	public void setvCode(String vCode) {
		this.vCode = vCode;
	}
	public int getProgress() {
		return Progress;
	}
	public void setProgress(int progress) {
		Progress = progress;
	}
	public int getManProgress() {
		return manProgress;
	}
	public void setManProgress(int manProgress) {
		this.manProgress = manProgress;
	}
	public int getDelProgress() {
		return delProgress;
	}
	public void setDelProgress(int delProgress) {
		this.delProgress = delProgress;
	}
	public int getInsProgress() {
		return insProgress;
	}
	public void setInsProgress(int insProgress) {
		this.insProgress = insProgress;
	}
	public int getDesProgress() {
		return desProgress;
	}
	public void setDesProgress(int desProgress) {
		this.desProgress = desProgress;
	}
	
	
}
