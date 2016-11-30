package com.chat.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chat.model.Blog;
import com.chat.model.Forum;
import com.chat.service.BlogService;
import com.chat.service.BlogserviceImpl;
import com.chat.service.ForumService;




@Controller
public class Chat {
	public Chat() {

		System.out.println("inside controller");
	}



@Autowired
BlogService blogService;

@Autowired
ForumService forumService;

	@RequestMapping("/")
	public String gotochatPage() {
		return "chat";
	}

	@RequestMapping("/chat")
	public String gotochatPag() {
		return "chat";
	}
//
//	@RequestMapping("/login")
//	public String gotologin() {
//		return "login";
//	}
	

	@RequestMapping("/login")
	public String gotologin(@RequestParam(value="error",required = false) String error, @RequestParam(value="logout",required = false) String logout, Model model) 
	{
		
		if(error!=null)
		{
			model.addAttribute("error","Invalid  to enter");
		}
		if(logout!=null)
		{
			model.addAttribute("msg", "logged out successfully");
		}
		return  "login";
  	}


	@RequestMapping("/signup")
	public String gotosignup() {
		return "signup";
	}
	
	@RequestMapping("/blog")
	public String blog(@ModelAttribute("blo") Blog blo,Model m)
	{
		List<Blog> blogLt= blogService.getList();
		m.addAttribute("blogList", blogLt);
	return "blog";	
	}
	
	
	@RequestMapping("/forum")
	public String forum(@ModelAttribute("frum") Forum frum,Model m)
	{
		List<Blog> forumLt= forumService.getList();
		m.addAttribute("forumList", forumLt);
	return "forum";	
	}



}