package com.tomato.syunnamori.Entity;

/**
 * @author unhourin
 * @version 2020/05/2510:19:54 
 * テーブルCreatureの実体
 */
public class Creature {
	private String cCode;
	private String tCode;
	private String cName;
	private int cPrice;
	private String sConditions;
	private String img;
	private String cPlace;
	private String fSH;
	private String shNmae;
	private int delFlg;
	
	private Month month;
	private TimeZone timeZone;
	
	
	public String getcCode() {
		return cCode;
	}
	public void setcCode(String cCode) {
		this.cCode = cCode;
	}
	public String gettCode() {
		return tCode;
	}
	public void settCode(String tCode) {
		this.tCode = tCode;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	public String getsConditions() {
		return sConditions;
	}
	public void setsConditions(String sConditions) {
		this.sConditions = sConditions;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getcPlace() {
		return cPlace;
	}
	public void setcPlace(String cPlace) {
		this.cPlace = cPlace;
	}
	public String getfSH() {
		return fSH;
	}
	public void setfSH(String fSH) {
		this.fSH = fSH;
	}
	public String getShNmae() {
		return shNmae;
	}
	public void setShNmae(String shNmae) {
		this.shNmae = shNmae;
	}
	public int getDelFlg() {
		return delFlg;
	}
	public void setDelFlg(int delFlg) {
		this.delFlg = delFlg;
	}
	public Month getMonth() {
		return month;
	}
	public void setMonth(Month month) {
		this.month = month;
	}
	public TimeZone getTimeZone() {
		return timeZone;
	}
	public void setTimeZone(TimeZone timeZone) {
		this.timeZone = timeZone;
	}
	
	
	

}
