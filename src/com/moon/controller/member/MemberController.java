package com.moon.controller.member;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moon.controller.main.Action;
import com.moon.controller.main.ActionForward;


public class MemberController implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("[member controller] => request : "+request + "response : " + response);
		return null;
	}


}
