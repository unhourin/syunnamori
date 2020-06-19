package com.tomato.syunnamori.Entity;

import com.tomato.syunnamori.Enum.FishShadow;

/**
*@author unhourin
*@version 2020/06/0817:31:56
*テーブルCreatureのエンティティ
*/
public class Creature {

	private String cCode;
	private String cName;
	

	private int fSh;
	private String fShName;
	private int cPrice;
	private String pCode;
	private String pName;
	private TimeZone timeZone;
	
	
	
	public String getcCode() {
		return cCode;
	}
	public void setcCode(String cCode) {
		this.cCode = cCode;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getfSh() {
		return fSh;
	}
	public void setfSh(int fSh) {
		this.fSh = fSh;
	}
	
	public String getfShName() {
		fShName = FishShadow.getfShName(fSh);
		return fShName;
	}
	
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	public String getpCode() {
		return pCode;
	}
	public void setpCode(String pCode) {
		this.pCode = pCode;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public TimeZone getTimeZone() {
		return timeZone;
	}
	public void setTimeZone(TimeZone timeZone) {
		this.timeZone = timeZone;
	}
	
}
