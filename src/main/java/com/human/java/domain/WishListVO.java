package com.human.java.domain;

public class WishListVO {

	private int wish_list_id;
	private String wish_list_flag;
	private int exhibition_id;
	private String exhibition_title;
	private String exhibition_start_date;
	private String exhibition_end_date;
	private String exhibition_total_date;
	private String exhibition_image;
	private String exhibition_location;
	private int exhibition_price;
	private String customer_id;
	
	
	
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public int getExhibition_id() {
		return exhibition_id;
	}
	public void setExhibition_id(int exhibition_id) {
		this.exhibition_id = exhibition_id;
	}
	public String getExhibition_title() {
		return exhibition_title;
	}
	public void setExhibition_title(String exhibition_title) {
		this.exhibition_title = exhibition_title;
	}
	public String getExhibition_start_date() {
		return exhibition_start_date;
	}
	public void setExhibition_start_date(String exhibition_start_date) {
		this.exhibition_start_date = exhibition_start_date;
	}
	public String getExhibition_end_date() {
		return exhibition_end_date;
	}
	public void setExhibition_end_date(String exhibition_end_date) {
		this.exhibition_end_date = exhibition_end_date;
	}
	public String getExhibition_total_date() {
		return exhibition_total_date;
	}
	public void setExhibition_total_date(String exhibition_total_date) {
		this.exhibition_total_date = exhibition_total_date;
	}
	public String getExhibition_image() {
		return exhibition_image;
	}
	public void setExhibition_image(String exhibition_image) {
		this.exhibition_image = exhibition_image;
	}
	public String getExhibition_location() {
		return exhibition_location;
	}
	public void setExhibition_location(String exhibition_location) {
		this.exhibition_location = exhibition_location;
	}
	public int getExhibition_price() {
		return exhibition_price;
	}
	public void setExhibition_price(int exhibition_price) {
		this.exhibition_price = exhibition_price;
	}
	public int getWish_list_id() {
		return wish_list_id;
	}
	public void setWish_list_id(int wish_list_id) {
		this.wish_list_id = wish_list_id;
	}
	public String getWish_list_flag() {
		return wish_list_flag;
	}
	public void setWish_list_flag(String wish_list_flag) {
		this.wish_list_flag = wish_list_flag;
	}
	
	@Override
	public String toString() {
			
		return wish_list_id + wish_list_flag;
	}
}
