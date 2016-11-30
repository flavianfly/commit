package com.chat.service;

import java.util.List;

import com.chat.model.Registertable;


public interface UserTableService {
	public int insertRow(Registertable us);

 public List getList();

 public Registertable getRowById(int id);

 public int updateRow(Registertable us );

 public int deleteRow(int id);

}