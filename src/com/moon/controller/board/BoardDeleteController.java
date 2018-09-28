package com.moon.controller.board;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moon.controller.main.Action;
import com.moon.controller.main.ActionForward;
import com.moon.model.board.BoardDaoImpl;

@WebServlet("/BoardDeleteController")
public class BoardDeleteController implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		BoardDaoImpl dao = BoardDaoImpl.getInstance();
		return null;
	}

}
