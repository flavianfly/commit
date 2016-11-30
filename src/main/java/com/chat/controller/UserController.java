package com.chat.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chat.model.Registertable;
import com.chat.service.UserTableService;



@Controller
public class UserController {
	@Autowired
	UserTableService usertableservice;

@RequestMapping("/welcome")
public ModelAndView fly(HttpServletRequest req,Model m) {
	boolean flag=false;
String name=req.getParameter("name");
String emailid=req.getParameter("email");
String password=req.getParameter("password");
String password1=req.getParameter("password1");
	
if ((name.isEmpty() )|| (emailid.isEmpty())||(password1.isEmpty())||	(password.isEmpty())) 
	{
		return new ModelAndView("signup","error","You must fill all the fields");
	
	} 
 if(!(password.equals(password1)))
	{
		return new ModelAndView("signup","error","Password doesn't match..");
	}
	else
	{
		for (char c : name.toCharArray()) 
		{
            if (flag = Character.isDigit(c)) 
            {
            	return new ModelAndView("signup","error","UserId cannot contain any digits..");
            }
           
        }
		
	}
 Registertable us=new Registertable();
 us.setName(name);
 us.setEmail(emailid);
 us.setPassword(password1);
 Date date=new Date();
 us.setCreationDate(date);
usertableservice.insertRow(us);
	 return new ModelAndView("chat");

}
}