package com.chat.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity


public class Role {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int rollid;
	private String roll_name;
	private String roll_username;
	public int getRoleid() {
		return rollid;
	}
	public void setRollid(int rollid) {
		this.rollid = rollid;
	}
	public String getRoll_name() {
		return roll_name;
	}
	public void setRoll_name(String roll_name) {
		this.roll_name = roll_name;
	}
	public String getRoll_username() {
		return roll_username;
	}
	public void setRoll_username(String roll_username) {
		this.roll_username = roll_username;
	}
	
	
	
}