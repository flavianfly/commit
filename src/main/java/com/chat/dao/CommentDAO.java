package com.chat.dao;

import java.util.List;

import com.chat.model.Cmd;



public interface CommentDAO {
 public int insertRow(Cmd cmt);

 public List getList();

 public Cmd getRowById(int id);

 public int updateRow(Cmd cmt);

 public int deleteRow(int id);

}