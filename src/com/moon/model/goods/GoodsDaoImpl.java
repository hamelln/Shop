package com.moon.model.goods;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class GoodsDaoImpl implements GoodsDao {

	private static SqlSession session;
	
	private static class LazyHolder {
		static final GoodsDaoImpl INSTANCE = new GoodsDaoImpl();
	}

	public static GoodsDaoImpl getInstance() {
		return LazyHolder.INSTANCE;
	}

	@Override
	public GoodsBean select(String name) {
		return null;
	}

	@Override
	public void insert(GoodsBean goods) {
	}

	@Override
	public void delete(String id) {
	}
}
