package cn.eddie.entity;

import cn.eddie.util.StringUtils;

import java.util.ArrayList;
import java.util.List;



public class ProductQueryObject extends QueryObject {
	
	private String productName;
	private Double minPrice;
	private Double maxPrice;
	private Long dir_id;

	/*
	//存放参数的集合
	private List<Object> parames = new ArrayList<Object>();
	//获取参数
	public List<Object> getParames(){
		return parames;
	}
	//获取Sql语句
	public String getQuerySql(){
		StringBuilder sql  = new StringBuilder();
		//存放sql语句的集合
		List<Object> conditions = new ArrayList<Object>();
		if(StringUtils.hasLength(productName)){
			conditions.add(" productName LIKE ?");
			parames.add("%"+productName+"%");
		}
		if(minPrice!=null){
			conditions.add(" salePrice >= ?");
			parames.add(minPrice);
		}
		if(maxPrice!=null){
			conditions.add(" salePrice <= ?");
			parames.add(maxPrice);
		}
		if(conditions.size()>0){
			sql.append(" WHERE ");
			sql.append(org.apache.commons.lang3.StringUtils.join(conditions, " AND "));
		}
		System.out.println(sql.toString());
		return sql.toString();
	}   */

	public void customQuery(){
		if(StringUtils.hasLength(productName)){
			super.addQuery(" productName LIKE ?", "%"+productName+"%");
		}
		if(minPrice!=null){
			super.addQuery(" salePrice >= ?", minPrice);
		}
		if(maxPrice!=null){
			super.addQuery(" salePrice <= ?", maxPrice);
		}
		if(dir_id!=null && dir_id != -1){
			super.addQuery(" dir_id = ?", dir_id);
		}
	}

	public ProductQueryObject() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductQueryObject(String productName, Double minPrice,
			Double maxPrice) {
		super();
		this.productName = productName;
		this.minPrice = minPrice;
		this.maxPrice = maxPrice;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Double getMinPrice() {
		return minPrice;
	}
	public void setMinPrice(Double minPrice) {
		this.minPrice = minPrice;
	}
	public Double getMaxPrice() {
		return maxPrice;
	}
	public void setMaxPrice(Double maxPrice) {
		this.maxPrice = maxPrice;
	}
	public Long getDir_id() { return dir_id;}
	public void setDir_id(Long dir_id) { this.dir_id = dir_id; }





}
