package com.tomato.syunnamori.Enum;

public enum ResultCode {
	
	SUCCESS(1,"リクエスト成功"),
	WARN(-1,"ネットが異常になっている"),
	NULL(0,"該当するデータがなし");
	
	private int code;
	private String msg;
	
	private ResultCode(int code, String msg) {
		this.code = code;
		this.msg = msg;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
}
