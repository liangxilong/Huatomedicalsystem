package com.bdqn.service;

import java.util.List;

import com.bdqn.model.Product;

public interface IProductService {

	List<Product> getAllProduct();

	void save(Product p);
}
