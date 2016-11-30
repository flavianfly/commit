package com.chat.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chat.model.Registertable;
import com.chat.model.Role;


@Repository("userBeanDAO")
public class UserTableDAOImpl implements UserTableDAO{

	@Autowired
	private SessionFactory sessionFactory;

	
	@Transactional(propagation=Propagation.SUPPORTS)
	 public int insertRow(Registertable p) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  p.setEnable("true");
	  Role r=new Role();
	  r.setRollid(p.getUserid());
	  r.setRoll_name("role_user");
	  r.setRoll_username(p.getName());
	  session.saveOrUpdate(r);
	  session.saveOrUpdate(p);
	  tx.commit();
	  Serializable id = session.getIdentifier(p);
	  session.close();
	  return (Integer) id;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public List getList() {
	  Session session = sessionFactory.openSession();
	  @SuppressWarnings("unchecked")
	  List pList = session.createQuery("from User_Info").list();
	  session.close();
	  return pList;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public Registertable getRowById(int id) {
	  Session session = sessionFactory.openSession();
	  Registertable p = (Registertable) session.load(Registertable.class, id);
	  return p;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int updateRow(Registertable p) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(p);
	  tx.commit();
	  Serializable id = session.getIdentifier(p);
	  session.close();
	  return (Integer) id;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  Registertable p = (Registertable) session.load(Registertable.class, id);
	  session.delete(p);
	  tx.commit();
	  Serializable ids = session.getIdentifier(p);
	  session.close();
	  return (Integer) ids;
	 }

	

	
}
