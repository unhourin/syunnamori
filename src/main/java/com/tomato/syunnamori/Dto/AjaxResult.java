package com.tomato.syunnamori.Dto;

/**
 * @author 雲鳳麟
 * @version 2020/05/28　10:00:54 
 * jsonの形の定義
 */

public class AjaxResult {

	private int code;
	private String msg;
	private Object data;

	public AjaxResult(int code, String msg, Object data) {
		super();
		this.code = code;
		this.msg = msg;
		this.data = data;
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

	

}
