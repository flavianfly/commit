package com.chat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chat.dao.AnswerDAO;
import com.chat.model.Reply;

@Service("AnswerService")
public class AnswerserviceImpl implements AnswerService {
    
	 @Autowired
	 AnswerDAO answerDAO;

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Reply ans) {
	  return answerDAO.insertRow(ans);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return answerDAO.getList();
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public Reply getRowById(int id) {
	  return answerDAO.getRowById(id);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Reply ans) {
	  return answerDAO.updateRow(ans);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return answerDAO.deleteRow(id);																																																																																	
	 }
}