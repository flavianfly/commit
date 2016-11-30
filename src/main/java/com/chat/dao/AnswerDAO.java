package com.chat.dao;

import java.util.List;

import com.chat.model.Reply;



public interface AnswerDAO {
 public int insertRow(Reply ans);

 public List getList();

 public Reply getRowById(int id);

 public int updateRow(Reply ans);

 public int deleteRow(int id);

}