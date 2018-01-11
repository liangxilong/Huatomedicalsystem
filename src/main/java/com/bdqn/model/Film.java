package com.bdqn.model;

import java.io.Serializable;
import java.util.Date;

/**
 * 指明特定一场
 * @author  司马懿
 *
 */
public class Film implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -9211353341697999425L;

	private Long id;
	
	private String name;
	
	private Double price;
	
	private Date playDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Date getPlayDate() {
		return playDate;
	}

	public void setPlayDate(Date playDate) {
		this.playDate = playDate;
	}
	
	
}
