package com.tomato.syunnamori.Entity;

import java.io.Serializable;

/**
*@author unhourin
*@version 2020/05/2510:42:32
*テーブルMonthの実体
*/
public class Month implements Serializable {
	private String c_code;
	private int earth;
	private int start_month;
	private int end_month;
	private int start_time;
	private int end_time;
	private int del_flg;
	
	
	
	@Override
	public String toString() {
		return "Month [c_code=" + c_code + ", earth=" + earth + ", start_month=" + start_month + ", end_month="
				+ end_month + ", start_time=" + start_time + ", end_time=" + end_time + ", del_flg=" + del_flg + "]";
	}
	
	public String getC_code() {
		return c_code;
	}
	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
	
	public int getEarth() {
		return earth;
	}

	public void setEarth(int earth) {
		this.earth = earth;
	}

	public int getStart_month() {
		return start_month;
	}

	public void setStart_month(int start_month) {
		this.start_month = start_month;
	}

	public int getEnd_month() {
		return end_month;
	}

	public void setEnd_month(int end_month) {
		this.end_month = end_month;
	}

	public int getStart_time() {
		return start_time;
	}

	public void setStart_time(int start_time) {
		this.start_time = start_time;
	}

	public int getEnd_time() {
		return end_time;
	}
	public void setEnd_time(int end_time) {
		this.end_time = end_time;
	}
	public int getDel_flg() {
		return del_flg;
	}
	public void setDel_flg(int del_flg) {
		this.del_flg = del_flg;
	}
	
	
	
	
}
