package com.tomato.syunnamori.Entity;
/**
*@author unhourin
*@version 2020/06/049:29:36
*クラス説明
*/


public class CreatureUn {
	private int cCode;
	private String cName;
	private int tCode;
	private String imgUrl;
	private int shCode;
	private int price;
	private int code;
	
	private FishShadowUn fishShadowUn;
	private NorthMonthUn northMonthUn;
	private SouthMonthUn southMonthUn;
	private PlaceUn placeUn;
	private TimeTableUn timeTableUn;
	private TimeZoneUn timeZoneUn;
	
	public int getcCode() {
		return cCode;
	}
	public void setcCode(int cCode) {
		this.cCode = cCode;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public int getShCode() {
		return shCode;
	}
	public void setShCode(int shCode) {
		this.shCode = shCode;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public FishShadowUn getFishShadowUn() {
		return fishShadowUn;
	}
	public void setFishShadowUn(FishShadowUn fishShadowUn) {
		this.fishShadowUn = fishShadowUn;
	}
	public NorthMonthUn getNorthMonthUn() {
		return northMonthUn;
	}
	public void setNorthMonthUn(NorthMonthUn northMonthUn) {
		this.northMonthUn = northMonthUn;
	}
	public SouthMonthUn getSouthMonthUn() {
		return southMonthUn;
	}
	public void setSouthMonthUn(SouthMonthUn southMonthUn) {
		this.southMonthUn = southMonthUn;
	}
	public PlaceUn getPlaceUn() {
		return placeUn;
	}
	public void setPlaceUn(PlaceUn placeUn) {
		this.placeUn = placeUn;
	}
	public TimeTableUn getTimeTableUn() {
		return timeTableUn;
	}
	public void setTimeTableUn(TimeTableUn timeTableUn) {
		this.timeTableUn = timeTableUn;
	}
	public TimeZoneUn getTimeZoneUn() {
		return timeZoneUn;
	}
	public void setTimeZoneUn(TimeZoneUn timeZoneUn) {
		this.timeZoneUn = timeZoneUn;
	}
	
	
	public int gettCode() {
		return tCode;
	}
	public void settCode(int tCode) {
		this.tCode = tCode;
	}
	@Override
	public String toString() {
		return "CreatureUn [cCode=" + cCode + ", cName=" + cName + ", tCode=" + tCode + ", imgUrl=" + imgUrl
				+ ", shCode=" + shCode + ", price=" + price + ", code=" + code + ", fishShadowUn=" + fishShadowUn
				+ ", northMonthUn=" + northMonthUn + ", southMonthUn=" + southMonthUn + ", placeUn=" + placeUn
				+ ", timeTableUn=" + timeTableUn + ", timeZoneUn=" + timeZoneUn + "]";
	}
	
	
	
	
	
}
