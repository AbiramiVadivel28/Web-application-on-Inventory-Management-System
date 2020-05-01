package com.virus;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

public class LoginServlet extends HttpServlet {

	public void doPost(HttpServletRequest req,HttpServletResponse res ) throws IOException, ServletException {
		String a = null,b = null;
		try {
		 a=req.getParameter("username");
		 b=req.getParameter("password");
		 System.out.println(a+" "+b);
		}
		catch(Exception e )
		{
			
		}
	    if (a.equals("a")&&  b.equals("1")){
        	
        	
	    	req.getRequestDispatcher("/AccessPage.html").forward(req, res);
        	
        	        } 
        
        else {
        	
        	req.getRequestDispatcher("/index.html").forward(req, res);
        	
        	System.out.println("Invalid Username or Password");
        
        }
	}
	
	public void doGet(HttpServletRequest req,HttpServletResponse res ) throws IOException, ServletException {
		req.getRequestDispatcher("/index.html").forward(req, res);
		
	}
	
	
}
