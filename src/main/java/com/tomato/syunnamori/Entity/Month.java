package com.tomato.syunnamori.Entity;
/**
*@author unhourin
*@version 2020/05/2510:42:32
*テーブルMonthの実体
*/
public class Month {
	private String month;
	private String cCode;
	private String earth;
	private String tZoneA;
	private String tZoneB;
	private int delFlg;
	
	
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getcCode() {
		return cCode;
	}
	public void setcCode(String cCode) {
		this.cCode = cCode;
	}
	public String getEarth() {
		return earth;
	}
	public void setEarth(String earth) {
		this.earth = earth;
	}
	public String gettZoneA() {
		return tZoneA;
	}
	public void settZoneA(String tZoneA) {
		this.tZoneA = tZoneA;
	}
	public String gettZoneB() {
		return tZoneB;
	}
	public void settZoneB(String tZoneB) {
		this.tZoneB = tZoneB;
	}
	public int getDelFlg() {
		return delFlg;
	}
	public void setDelFlg(int delFlg) {
		this.delFlg = delFlg;
	}
	
	
	
	
	
	
}
