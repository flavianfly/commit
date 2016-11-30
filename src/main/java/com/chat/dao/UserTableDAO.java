package com.chat.dao;

import java.util.List;

import com.chat.model.Registertable;



public interface UserTableDAO {
 public int insertRow(Registertable us);

 public List getList();

 public Registertable getRowById(int id);

 public int updateRow(Registertable us);

 public int deleteRow(int id);

}