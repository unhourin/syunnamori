package com.tomato.syunnamori.Entity;

/**
 * @author unhourin
 * @version 2020/05/2510:49:49 
 *　テーブルtime_zoneの実体
 */
public class TimeZone {

	private String tCode;
	private int startTime;
	private int endTime;
	private String delFlg;
	
	
	public String gettCode() {
		return tCode;
	}
	public void settCode(String tCode) {
		this.tCode = tCode;
	}
	public int getStartTime() {
		return startTime;
	}
	public void setStartTime(int startTime) {
		this.startTime = startTime;
	}
	public int getEndTime() {
		return endTime;
	}
	public void setEndTime(int endTime) {
		this.endTime = endTime;
	}
	public String getDelFlg() {
		return delFlg;
	}
	public void setDelFlg(String delFlg) {
		this.delFlg = delFlg;
	}
	
	

}
