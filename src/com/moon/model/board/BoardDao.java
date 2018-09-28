package com.moon.model.board;

import java.util.List;

public interface BoardDao {

	public int getListCount();
	public List getBoardList(BoardBean board);
	public BoardBean getDetail(int num) throws Exception;
	public int boardInsert(BoardBean board);
	public int boardReply(BoardBean board);
	public boolean boardModify(BoardBean modifiedBoard) throws Exception;
	public boolean boardDelete(int num);
	public void setReadCountUpdate(int num) throws Exception;
	public boolean isBoardWriter(int num, String pass);

	
}
