package com.tomato.syunnamori.Entity;

/**
 * @author 雲鳳麟
 * @version 2020/05/2510:19:54 
 * テーブルCreatureの実体
 */

public class Creature{
	private int c_code;
	private String t_code;
	private String c_name;
	private int c_price;
	private String s_conditions;
	private String img;
	private String c_place;
	private String f_sh;
	private String sh_name;
	private int del_flg;
	private String s_zone;
	private String n_zone;
	private int month_gap;
	private int time_gap;
	private int earth;

	public int getEarth() {
		return earth;
	}

	public void setEarth(int earth) {
		this.earth = earth;
	}

	public int getC_code() {
		return c_code;
	}

	public void setC_code(int c_code) {
		this.c_code = c_code;
	}

	public String getT_code() {
		return t_code;
	}

	public void setT_code(String t_code) {
		this.t_code = t_code;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public int getC_price() {
		return c_price;
	}

	public void setC_price(int c_price) {
		this.c_price = c_price;
	}

	public String getS_conditions() {
		return s_conditions;
	}

	public void setS_conditions(String s_conditions) {
		this.s_conditions = s_conditions;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getC_place() {
		return c_place;
	}

	public void setC_place(String c_place) {
		this.c_place = c_place;
	}

	public String getF_sh() {
		return f_sh;
	}

	public void setF_sh(String f_sh) {
		this.f_sh = f_sh;
	}

	

	public String getSh_name() {
		return sh_name;
	}

	public void setSh_name(String sh_name) {
		this.sh_name = sh_name;
	}

	public int getDel_flg() {
		return del_flg;
	}

	public void setDel_flg(int del_flg) {
		this.del_flg = del_flg;
	}

	public String getS_zone() {
		return s_zone;
	}

	public void setS_zone(String s_zone) {
		this.s_zone = s_zone;
	}

	public String getN_zone() {
		return n_zone;
	}

	public void setN_zone(String n_zone) {
		this.n_zone = n_zone;
	}

	public int getMonth_gap() {
		return month_gap;
	}

	public void setMonth_gap(int month_gap) {
		this.month_gap = month_gap;
	}

	public int getTime_gap() {
		return time_gap;
	}

	public void setTime_gap(int time_gap) {
		this.time_gap = time_gap;
	}

	
	
	

}
