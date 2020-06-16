package com.tomato.syunnamori.Entity;


/**
*@author unhourin
*@version 2020/06/0817:46:53
*テーブルTimeZoneのエンティティ
*/
public class TimeZone {
	private int nMonth;
	private int sMonth;
	private int timeZone;
	
	public int getnMonth() {
		return nMonth;
	}
	public void setnMonth(int nMonth) {
		this.nMonth = nMonth;
	}
	public int getsMonth() {
		return sMonth;
	}
	public void setsMonth(int sMonth) {
		this.sMonth = sMonth;
	}
	public int getTimeZone() {
		return timeZone;
	}
	public void setTimeZone(int timeZone) {
		this.timeZone = timeZone;
	}
	
	@Override
	public String toString() {
		return "TimeZone [fvb-vbgxziop@;-gnMonth=" + nMonth + ", sMonth=" + sMonth
				+ ", timeZone=" + timeZone + "]";
	}
	
	
}
