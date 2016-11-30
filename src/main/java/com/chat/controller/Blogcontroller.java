package com.chat.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.chat.model.Blog;
import com.chat.model.Cmd;
import com.chat.service.BlogService;
import com.chat.service.CommentService;
import com.google.gson.Gson;

@Controller
public class Blogcontroller {

	@Autowired
	BlogService blogService;
	
	@Autowired
	CommentService commentService;
	
	
	
	public Blogcontroller() {
		super();
		System.out.println("blog ctrl");
	}

	@RequestMapping("/addBlog")
	public ModelAndView toBlog(@ModelAttribute("blo")Blog blo)
	{
		return new ModelAndView("addBlog");
	}
	
	@RequestMapping(value="/confirmpage",method=RequestMethod.POST)
	public ModelAndView toCreateBlog(@ModelAttribute("blo")Blog blo,Model m)
	{
		blo.setCreationDate(new Date());
		blogService.insertRow(blo);
		blo=blogService.getRowById(blo.getBlogId());
		m.addAttribute("blog",blo);
		return new ModelAndView("confirmpage");
	}
	
	@RequestMapping("/editblog")
	public String toEditBlog(@ModelAttribute("blo")Blog blo,@RequestParam int id,Model m){
		blo=blogService.getRowById(id);
		m.addAttribute("b", blo);
		return "editblog";
	}
	
	@RequestMapping("/updateBlog")
	public String toUpdateBlog(@ModelAttribute("blo")Blog blo,@RequestParam int id,Model m){
		blogService.updateRow(blo);
		List<Blog> blogList=blogService.getList();
		blo=blogService.getRowById(id);
		m.addAttribute("blog", blo);
		return "confirmpage";
	}
	
	
	@RequestMapping("/bloglist")
	public ModelAndView toListBlog(@ModelAttribute("blo")Blog blo,Model m)
	{
		/*List<Blog> blogList=blogService.getList();
		return new ModelAndView("bloglist","blogList",blogList);*/
		List<Blog> blogList=blogService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(blogList);
		m.addAttribute("pdata",st);
		 return new ModelAndView("bloglist");
	}
	@RequestMapping("deleteBlog")
	
	public ModelAndView deleteUser(@ModelAttribute("blo")Blog blo,@RequestParam int id,Model m) {
		blogService.deleteRow(id);
		List<Blog> blogList=blogService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(blogList);
		m.addAttribute("pdata", st);
		return new ModelAndView("bloglist");
	
}

	
	
	/*@RequestMapping("/blogPage")
	public ModelAndView toBlogPage(@ModelAttribute("blo")Blog blo,@RequestParam int id,Model m)
	{
		blo=blogService.getRowById(id);
		List<BlogComment> cmtLt=blogCommentService.getList();
		m.addAttribute("cmts", cmtLt);
		return new ModelAndView("blogPage","blog",blo);
	}*/
	/*
	@RequestMapping("/addComment")
	public ModelAndView toAddComment(@ModelAttribute("cmt")BlogComment cmt,Model m)
	{
		blogCommentService.insertRow(cmt);
		Blog blo=blogService.getRowById(id);
		List<BlogComment> cmtLt=blogCommentService.getList();
		m.addAttribute("cmts", cmtLt);
		return new ModelAndView("blogPage","blog",blo);
	}*/
	/*@RequestMapping("blogpage")1
	public String blog (@ModelAttribute("blo")Blog blo,@RequestParam int id,Model m){
	blo=blogService.getRowById(id);
	m.addAttribute("blog", blo);
		return "blogpage";
	}*/
	
	@RequestMapping("/blogpage")
	public String blogpage(@ModelAttribute("cmt") Cmd cmt,@RequestParam int id,Model m)
	{
		Blog blo=blogService.getRowById(id);
		m.addAttribute("blog" ,blo);
		//m.addAttribute("b", blo);
		List<Cmd> cmtLt=commentService.getList();
		List<Cmd> cmtNeed=new ArrayList<Cmd>();
		for(Cmd ccmt:cmtLt)
		{
			if(ccmt.getBlogid()==id)
			{
				cmtNeed.add(ccmt);
			}
		}
		/*String str=gson.toJson(cmtNeed);*/
		m.addAttribute("cmts", cmtNeed);
		return "blogpage";	
	}

	
	/*@RequestMapping("/addLike")
	public ModelAndView toAddALike(@ModelAttribute("blo")Blog blo,@RequestParam int id,Model m)
	{
		blo=blogService.getRowById(id);
		int n=blo.getLikeCount()+1;
		blo.setLikeCount(n);
		blogService.updateRow(blo);
		//m.addAttribute();
		return new ModelAndView("blogPage","blog",blo);
	}
	
	@RequestMapping("/addDislike")
	public ModelAndView toAddADisLike(@ModelAttribute("blo")Blog blo,@RequestParam int id,Model m)
	{
		blo=blogService.getRowById(id);
		int n=blo.getDislikeCount()+1;
		blo.setDislikeCount(n);
		blogService.updateRow(blo);
		//m.addAttribute("blog",blo);
		return new ModelAndView("blogPage","blog",blo);
	}
}*/
@RequestMapping(value="addComment",method=RequestMethod.POST)
public String toAddItDb(@ModelAttribute("cmt")Cmd cmt,@RequestParam int id,Model m)
{
	cmt.setCreationDate(new Date());;
	commentService.insertRow(cmt);
	/*List<BlogComment> bloLt=blogCommentService.getList();
	m.addAttribute("blog", bloLt);*/
	
	Blog blo=blogService.getRowById(id);
	m.addAttribute("blog", blo);
	List<Cmd> cmtLt=commentService.getList();
	List<Cmd> cmtNeed=new ArrayList<Cmd>();
	for(Cmd ccmt:cmtLt)
	{
		if(ccmt.getBlogid()==id)
		{
			cmtNeed.add(ccmt);
		}
	}
	/*String str=gson.toJson(cmtNeed);*/
	m.addAttribute("cmts", cmtNeed);
	return "blogpage";
}
}
