package com.chat.dao;

import java.util.List;

import com.chat.model.Forum;



public interface ForumDAO {
 public int insertRow(Forum frm);

 public List getList();

 public Forum getRowById(int id);

 public int updateRow(Forum frm);

 public int deleteRow(int id);

}