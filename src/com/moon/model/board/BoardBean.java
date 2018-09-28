package com.moon.model.board;

import java.sql.Date;

public class BoardBean {

	private int board_num;
	private String board_username;
	private String board_pass;
	private String board_title;
	private String board_content;
	private String board_file;
	private int board_re_ref;
	private int board_re_lev;
	private int board_re_seq;
	private int board_readCount;
	private Date board_date;
	private int page;
	private int limit;

	public BoardBean() {
	}

	public BoardBean(String board_title, String board_content) {
		this.board_title = board_title;
		this.board_content = board_content;
	}

	public BoardBean(int page, int limit) {
		this.page = page;
		this.limit = limit;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getBoard_re_ref() {
		return board_re_ref;
	}

	public void setBoard_re_ref(int board_re_ref) {
		this.board_re_ref = board_re_ref;
	}

	public int getBoard_re_lev() {
		return board_re_lev;
	}

	public void setBoard_re_lev(int board_re_lev) {
		this.board_re_lev = board_re_lev;
	}

	public int getBoard_re_seq() {
		return board_re_seq;
	}

	public void setBoard_re_seq(int board_re_seq) {
		this.board_re_seq = board_re_seq;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getBoard_username() {
		return board_username;
	}

	public void setBoard_username(String board_username) {
		this.board_username = board_username;
	}

	public String getBoard_pass() {
		return board_pass;
	}

	public void setBoard_pass(String board_pass) {
		this.board_pass = board_pass;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_file() {
		return board_file;
	}

	public void setBoard_file(String board_file) {
		this.board_file = board_file;
	}

	public int getBoard_readCount() {
		return board_readCount;
	}

	public void setBoard_readCount(int board_readCount) {
		this.board_readCount = board_readCount;
	}

	public Date getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}

	@Override
	public String toString() {
		return "BoardBean [board_num=" + board_num + ", board_username=" + board_username + ", board_pass=" + board_pass
				+ ", board_title=" + board_title + ", board_content=" + board_content + ", board_file=" + board_file
				+ ", board_re_ref=" + board_re_ref + ", board_re_lev=" + board_re_lev + ", board_re_seq=" + board_re_seq
				+ ", board_readCount=" + board_readCount + ", board_date=" + board_date + ", page=" + page + ", limit="
				+ limit + "]";
	}

}
