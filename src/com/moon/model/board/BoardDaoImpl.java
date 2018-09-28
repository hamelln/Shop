package com.moon.model.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.manager.SqlSessionManager;

public class BoardDaoImpl implements BoardDao {
	// ----------------------싱글톤 패턴-------------------------------
	private BoardDaoImpl() {
	}

	private static class LazyHolder {
		static final BoardDaoImpl INSTANCE = new BoardDaoImpl();
	}

	public static BoardDaoImpl getInstance() {
		return LazyHolder.INSTANCE;
	}
	// ----------------------싱글톤 패턴-------------------------------

	// Sqlsession을 쓰면 xml을 이용해 DB와 직접 소통할 수 있다.
	SqlSession sqlSession = SqlSessionManager.getInstance().getSession();

	@Override
	public int getListCount() {
		int count = sqlSession.selectOne("getBoardCount");
		return count;
	}

	@Override
	public List getBoardList(BoardBean board) {
		List<BoardBean> list = sqlSession.selectList("getBoardList");
		return list;
	}

	@Override
	public BoardBean getDetail(int num) throws Exception {
		BoardBean board = null;
		board = sqlSession.selectOne("getBoard", num);
		return board;
	}

	@Override
	public int boardInsert(BoardBean board) {
		int result = 0;
		String content = board.getBoard_content();
		String title = board.getBoard_title();
		if (content == "" || content == null) {
			result = -1;
		} else if (content.length() < 5 && content.length() > 0) {
			result = -2;
		} else if (title == "" || title == null) {
			result = -0;
		} else {
			result = 1;
			sqlSession.insert("writeBoard", board);
			// insert만으론 DB에 등록이 안 된다. commit()을 해준다.
			sqlSession.commit();
		}
		return result;
	}

	@Override
	public int boardReply(BoardBean board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean boardModify(BoardBean modifiedBoard) throws Exception {
		sqlSession.update("modifyBoard", modifiedBoard);
		return false;
	}

	@Override
	public boolean boardDelete(int num) {
		boolean isExist = false;
		try {
			BoardBean board = getDetail(num);
			if (board == null) {
				return false;
			} else {
				sqlSession.delete("deleteBoard", num);
				isExist = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public void setReadCountUpdate(int num) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean isBoardWriter(int num, String pass) {
		// TODO Auto-generated method stub
		return false;
	}

}
