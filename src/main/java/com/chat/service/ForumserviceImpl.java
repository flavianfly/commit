package com.chat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chat.dao.ForumDAO;
import com.chat.model.Forum;



@Service("forumService")
public class ForumserviceImpl implements ForumService {
    
	 @Autowired
	 ForumDAO forumDAO;

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Forum frm) {
	  return forumDAO.insertRow(frm);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return forumDAO.getList();
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public Forum getRowById(int id) {
	  return forumDAO.getRowById(id);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Forum frm) {
	  return forumDAO.updateRow(frm);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return forumDAO.deleteRow(id);
	 }
}
