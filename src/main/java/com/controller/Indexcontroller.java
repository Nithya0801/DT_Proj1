package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.ImportResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Indexcontroller {

	
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
	
	
	@RequestMapping("/index")
	public ModelAndView index1()
	{
		return new ModelAndView("index");
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

