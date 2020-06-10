package com.tomato.syunnamori.Enum;

/**
 * @author unhourin
 * @version 2020/06/0916:55:48 クラス説明
 */
public enum Place {
	tree(1, "木");

	private int pCode;
	private String placeStr;

	private Place(int pCode, String placeStr) {
		this.pCode = pCode;
		this.placeStr = placeStr;
	}

	public int getpCode() {
		return pCode;
	}

	public void setpCode(int pCode) {
		this.pCode = pCode;
	}

	public String getPlaceStr() {
		return placeStr;
	}

	public void setPlaceStr(String placeStr) {
		this.placeStr = placeStr;
	}

}
