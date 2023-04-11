package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="notes")
public class NoteTaker {
	
	@Id
	private int id;
	private String title;
	@Column(length=2500)
	private String content;
	private String writer;
	private Date addedDate;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	public NoteTaker( String title, String content, String writer, Date addedDate) {
		super();
		this.id = new Random().nextInt(100000);
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.addedDate = addedDate;
	}
	public NoteTaker() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	

}
