package com.tomato.syunnamori.Entity;
/**
*@author unhourin
*@version 2020/06/0410:47:55
*クラス説明
*/
public class TimeTableUn {
	private int cCode;
	private String nMonthZone;
	private String sMonthZone;
	private String tZone;
	private boolean isAllDay;
	private boolean isAlllYear;
	
	public int getcCode() {
		return cCode;
	}
	public void setcCode(int cCode) {
		this.cCode = cCode;
	}
	public String getnMonthZone() {
		return nMonthZone;
	}
	public void setnMonthZone(String nMonthZone) {
		this.nMonthZone = nMonthZone;
	}
	public String getsMonthZone() {
		return sMonthZone;
	}
	public void setsMonthZone(String sMonthZone) {
		this.sMonthZone = sMonthZone;
	}
	public String gettZone() {
		return tZone;
	}
	public void settZone(String tZone) {
		this.tZone = tZone;
	}
	public boolean isAllDay() {
		return isAllDay;
	}
	public void setAllDay(boolean isAllDay) {
		this.isAllDay = isAllDay;
	}
	public boolean isAlllYear() {
		return isAlllYear;
	}
	public void setAlllYear(boolean isAlllYear) {
		this.isAlllYear = isAlllYear;
	}
	
	@Override
	public String toString() {
		return "TimeTableUn [cCode=" + cCode + ", nMonthZone=" + nMonthZone + ", sMonthZone=" + sMonthZone + ", tZone="
				+ tZone + ", isAllDay=" + isAllDay + ", isAlllYear=" + isAlllYear + "]";
	}
	
	
}
