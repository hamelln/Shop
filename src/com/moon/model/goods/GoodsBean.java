package com.moon.model.goods;

public class GoodsBean {

	private int goods_id;
	private String name;
	private int price;
	private String img;
	private int stock;
	
	public int getId_num() {
		return goods_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	@Override
	public String toString() {
		return "GoodsBean [id_num=" + goods_id + ", name=" + name + ", price=" + price + ", img=" + img + ", stock="
				+ stock + "]";
	}
	
}
