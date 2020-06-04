package com.tomato.syunnamori.Entity;
/**
*@author unhourin
*@version 2020/06/0410:45:15
*クラス説明
*/
public class PlaceUn {
	private int pCode;
	private String pName;
	
	public int getpCode() {
		return pCode;
	}
	public void setpCode(int pCode) {
		this.pCode = pCode;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	
	@Override
	public String toString() {
		return "PlaceUn [pCode=" + pCode + ", pName=" + pName + "]";
	}
	
	
}
