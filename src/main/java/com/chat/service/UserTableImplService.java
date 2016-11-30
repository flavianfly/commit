package com.chat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chat.dao.UserTableDAO;

import com.chat.model.Registertable;

@Service("userBeanService")
public class UserTableImplService implements UserTableService {
    
	 @Autowired
	 UserTableDAO userBeanDAo;

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Registertable us) {
	  return userBeanDAo.insertRow(us);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return userBeanDAo.getList();
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public Registertable getRowById(int id) {
	  return userBeanDAo.getRowById(id);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Registertable us) {
	  return userBeanDAo.updateRow(us);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return userBeanDAo.deleteRow(id);
	 }

	}