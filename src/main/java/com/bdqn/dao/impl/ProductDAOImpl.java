package com.bdqn.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bdqn.dao.ProductDAO;
import com.bdqn.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

//	public ProductDAOImpl(SessionFactory sessionFactory) {
//		this.sessionFactory = sessionFactory;
//	}
	
	 

	@Override
	@Transactional
	public List<Product> list() {
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>)
			sessionFactory.getCurrentSession().getNamedQuery("all").list();
		return listProduct;
	}

	@Override
	@Transactional
	public void save(Product p) {
		sessionFactory.getCurrentSession().save(p);
	}

}
