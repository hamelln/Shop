package com.moon.controller.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moon.controller.main.Action;
import com.moon.controller.main.ActionForward;
import com.moon.model.board.BoardBean;
import com.moon.model.board.BoardDaoImpl;

@WebServlet("/BoardController")
public class BoardAddController implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String board_title = request.getParameter("board_title");
		String board_content = request.getParameter("board_content");
		System.out.println("content="+board_content);
		BoardBean board = new BoardBean(board_title, board_content);
		BoardDaoImpl dao = BoardDaoImpl.getInstance();
		int result = dao.boardInsert(board);
		
		if(result==-2) {
			out.print("<script>");
			out.print("alert('질문은 5글자 이상으로 해주세요.');");
			out.print("history.back();");
			out.print("</script>");
			}
		if(result==-1) {
			out.print("<script>");
			out.print("alert('질문을 등록해주세요.');");
			out.print("history.back();");
			out.print("</script>");
			}
		if(result==0) {
			out.print("<script>");
			out.print("alert('제목이 없습니다.');");
			out.print("history.back();");
			out.print("</script>");
			}
		if(result==1) {
			out.print("<script>");
			out.print("alert('질문이 등록됐습니다.');");
			out.print("history.back();");
			out.print("</script>");
			}
		
		return null;
	}

}
