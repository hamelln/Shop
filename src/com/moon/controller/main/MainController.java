package com.moon.controller.main;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import java.util.StringTokenizer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String RequestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=RequestURI.substring(contextPath.length());
		System.out.println("RequestURI="+RequestURI);
		System.out.println("contextPath="+contextPath);
		System.out.println("command="+command);
		
		Action action = null;
		ActionForward forward = null;
		
		Properties prop = new Properties();
		FileInputStream fis = 
		  new FileInputStream("C:\\jspworkspace2\\Shop\\WebContent\\command\\command.properties");
		
		prop.load(fis);
		fis.close();
		String value = prop.getProperty(command).trim();
		
		 System.out.println("property result => "+value);
		 
		if(value.substring(0, 7).equals("execute")) {
			try {
					StringTokenizer st = new StringTokenizer(value, "|");
					String url_1=st.nextToken();
					String url_2=st.nextToken();
					System.out.println("url_1="+url_1);
					System.out.println("url_2="+url_2);
					Class url=Class.forName(url_2); 
					action = (Action)url.newInstance();
				    forward=action.execute(request, response);
				    System.out.println("????");
		}catch(Exception e) {
				e.printStackTrace();
			}
		}else {
			forward=new ActionForward();
			forward.setRedirect(true);
			forward.setPath(value);
			System.out.println("redirect=> "+value);
		}
		if(forward!=null) {
			if(forward.isRedirect()) {
				System.out.println("forward.isRedirect()=>"+forward.isRedirect());
				response.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getPath());
				System.out.println("forward.getPath()=>"+forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
}