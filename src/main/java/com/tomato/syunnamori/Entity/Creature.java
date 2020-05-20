package com.tomato.syunnamori.Entity;

public class Creature {
	private String c_code;
	private String c_name;
	private int c_price;
	private String s_name;
	private String img;
	private String c_place;
	private String f_sh;
	private String sh_name;
	private String n_time;
	private String s_time;
	private int d_flg;
//	private String ver;
//	private Date lud_date;
//	private String lud_person;
//	private Date fud_date;
//	private String fud_person;

	public Creature() {

	}

	@Override
	public String toString() {
		return "Creature [c_code=" + c_code + ", c_name=" + c_name + ", c_price=" + c_price + ", s_name=" + s_name
				+ ", img=" + img + ", c_place=" + c_place + ", f_sh=" + f_sh + ", sh_name=" + sh_name + ", n_time="
				+ n_time + ", s_time=" + s_time + ", d_flg=" + d_flg + "]";
	}

	public String getC_code() {
		return c_code;
	}

	public void setC_code(String c_code) {
		this.c_code = c_code;
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

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
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

	public String getN_time() {
		return n_time;
	}

	public void setN_time(String n_time) {
		this.n_time = n_time;
	}

	public String getS_time() {
		return s_time;
	}

	public void setS_time(String s_time) {
		this.s_time = s_time;
	}

	public int getD_flg() {
		return d_flg;
	}

	public void setD_flg(int d_flg) {
		this.d_flg = d_flg;
	}

}
