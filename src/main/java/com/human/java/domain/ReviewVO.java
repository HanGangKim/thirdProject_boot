package com.human.java.domain;

public class ReviewVO {
	
	// CUSTOMER_INFO 테이블 
	private String customer_name;

	// REVIEW 테이블
	private int review_id;
	private String review_title;
	private String review_contents;
	private String review_date;
	private double review_star_score;
	private int exhibition_id;
	private String customer_id;
	
	// exhibition 테이블
	private String exhibition_title;
	private String exhibition_start_date;
	private String exhibition_end_date;
	private String exhibition_image;
	private String exhibition_location;
	
	// ticketing 테이블
	private int ticketing_id;
	
	public int getTicketing_id() {
		return ticketing_id;
	}
	public void setTicketing_id(int ticketing_id) {
		this.ticketing_id = ticketing_id;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
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

	

	public int getExhibition_id() {
		return exhibition_id;
	}
	public void setExhibition_id(int exhibition_id) {
		this.exhibition_id = exhibition_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_contents() {
		return review_contents;
	}
	public void setReview_contents(String review_contents) {
		this.review_contents = review_contents;
	}
	public String getReview_date() {
		return review_date;
	}
	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}
	public double getReview_star_score() {
		return review_star_score;
	}
	public void setReview_star_score(double review_star_score) {
		this.review_star_score = review_star_score;
	}
	
	
}
