package com.tomato.syunnamori.Dto;

public class AjaxResult {

	private int code;
	private String msg;
	private Object data;
	private Object nData;
	private Object sData;

	public AjaxResult(int code, String msg, Object data) {
		super();
		this.code = code;
		this.msg = msg;
		this.data = data;
	}

	public AjaxResult(int code, String msg, Object nData, Object sData) {
		super();
		this.code = code;
		this.msg = msg;
		this.nData = nData;
		this.sData = sData;
	}

	public AjaxResult(int code, String msg) {
		super();
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

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public Object getnData() {
		return nData;
	}

	public void setnData(Object nData) {
		this.nData = nData;
	}

	public Object getsData() {
		return sData;
	}

	public void setsData(Object sData) {
		this.sData = sData;
	}

	@Override
	public String toString() {
		return "AjaxResult [code=" + code + ", msg=" + msg + ", data=" + data + ", nData=" + nData + ", sData=" + sData
				+ "]";
	}
	
	

}
