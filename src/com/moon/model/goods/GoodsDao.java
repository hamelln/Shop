package com.moon.model.goods;

public interface GoodsDao {
	public GoodsBean select(String name);
	public void insert(GoodsBean goods);
	public void delete(String id);
}
