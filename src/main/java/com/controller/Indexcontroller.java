package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.UserDao;
import com.Model.User;


@Controller
public class Indexcontroller {

	
	@Autowired
	UserDao user1;
	@RequestMapping("/login")
	public ModelAndView mymethod(HttpServletRequest req,HttpServletResponse res)
	{
		String name=req.getParameter("un");
		String p=req.getParameter("pwd");
		
		if(name.equalsIgnoreCase("nithya") && p.equals("123"))
			return new ModelAndView("success","message","successfully logged in!!!!");
		else
			return new ModelAndView("error","message","Username or Password Incorrect!!!!");
	}
	

	@RequestMapping("/")
	public ModelAndView index()
	{
		return new ModelAndView("index");
	}
	
	
	@RequestMapping("/register")
	public ModelAndView register()
	{
		return new ModelAndView("register");
	}
	
	@RequestMapping("/store")
	public ModelAndView save(HttpServletRequest request,HttpServletResponse response){  
     
		
		
		User u=new User();
		u.setName(request.getParameter("un"));
		u.setAddress(request.getParameter("addr"));
		u.setEmail(request.getParameter("mail"));
		u.setPhone(request.getParameter("phone"));
		u.setCountry(request.getParameter("country"));
		user1.addUser(u);
	//	request.getSession().setAttribute("obj", u);
        return new ModelAndView("success");
       // return new ModelAndView("redirect:/viewemp");//will redirect to viewemp request mapping  
    }  
	@RequestMapping("/index")
	public ModelAndView index1()
	{
		return new ModelAndView("index");
	}
	
	@RequestMapping("/getAllUser")
	public ModelAndView InvokeAll(HttpServletRequest request)
	{
		List<User> ll=user1.getAllUser();
		request.getSession().setAttribute("obj", ll);
		return new ModelAndView("reteriveAll");
		
	}
	
	@RequestMapping("/reteriveAll")
	public ModelAndView reterive()
	{
		return new ModelAndView("reteriveAll");
	}
	@RequestMapping("/success")
	public ModelAndView success()
	{
		return new ModelAndView("success");
	}
	@RequestMapping("/error")
	public ModelAndView error()
	{
		return new ModelAndView("error");
	}
	@RequestMapping("/signin")
	public ModelAndView signin()
	{
		return new ModelAndView("login");
	}
	

}

