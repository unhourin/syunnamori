package com.tomato.syunnamori.Enum;

/**
 * @author unhourin
 * @version 2020/06/0916:55:48 クラス説明
 */
public enum FishShadow {
	Doesalfin(1, "背びれ"),
	SS(2, "極小"),
	S(3, "小"),
	M(4, "中"),
	Slender(5, "細長"),
	L(6, "大"),
	LL(7, "特大"),
	LLL(8, "超特大"),;

	private int pCode;
	private String placeStr;

	private FishShadow(int pCode, String placeStr) {
		this.pCode = pCode;
		this.placeStr = placeStr;
	}
	
	//
	public static String getfShName(int pCode) {
        for (FishShadow fishShadow : FishShadow.values()) {
            if (fishShadow.getpCode() == pCode) {
                return fishShadow.placeStr;
            }
        }
        return null;
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
