package com.chat.service;

import java.util.List;

import com.chat.model.Reply;



public interface AnswerService {
 public int insertRow(Reply ans);

 public List getList();

 public Reply getRowById(int id);

 public int updateRow(Reply ans );

 public int deleteRow(int id);

}