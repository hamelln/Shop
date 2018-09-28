package com.moon.controller.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moon.controller.main.Action;
import com.moon.controller.main.ActionForward;
import com.moon.model.board.BoardBean;
import com.moon.model.board.BoardDaoImpl;

@WebServlet("/BoardListController")
public class BoardListController implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		BoardDaoImpl dao = BoardDaoImpl.getInstance();
		List<BoardBean> boardList = new ArrayList<>();

		int page = 1;
		int limit = 5;

		System.out.println(page);

		BoardBean board = new BoardBean(page, limit);

		int listCount = dao.getListCount();
		boardList = dao.getBoardList(board);

		int maxPage = (int) ((double) listCount / limit + 0.95);
		int startPage = (((int) ((double) page / 5 + 0.9)) - 1) * 10 + 1;
		int endPage = maxPage;

		if (endPage > startPage + 5 - 1)
			endPage = startPage + 5 - 1;

		request.setAttribute("page", page);
		request.setAttribute("maxPage", maxPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("listCount", listCount);
		request.setAttribute("boardList", boardList);

		System.out.println("여기 보드리스트임" + boardList);

		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("board_list.jsp");
		return forward;
	}

}
