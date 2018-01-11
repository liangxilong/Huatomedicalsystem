package com.bdqn.dao;

import java.util.List;

import com.bdqn.model.Product;

public interface ProductDAO {
	List<Product> list();
	
	void save(Product p);
}
