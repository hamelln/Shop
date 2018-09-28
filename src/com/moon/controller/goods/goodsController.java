package com.moon.controller.goods;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moon.controller.main.Action;
import com.moon.controller.main.ActionForward;

@WebServlet("/goodsController")
public class goodsController implements Action {
	private static final long serialVersionUID = 1L;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("asdasd");
	
		return null;
	}

}
