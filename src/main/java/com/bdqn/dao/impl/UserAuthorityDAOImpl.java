package com.bdqn.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bdqn.dao.UserAuthorityDAO;
import com.bdqn.model.Product;
import com.bdqn.model.UserAuthority;

@Repository
public class UserAuthorityDAOImpl implements UserAuthorityDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<UserAuthority> select(String username, String password) {
		String hql = "from UserAuthority WHERE userName = :username AND password = :password";
		@SuppressWarnings("unchecked")
		List<UserAuthority> listUser = (List<UserAuthority>)
			sessionFactory.getCurrentSession()
			.createQuery(hql)
			.setParameter("username", username).setParameter("password", password).list();
		return listUser;
	}

//	public ProductDAOImpl(SessionFactory sessionFactory) {
//		this.sessionFactory = sessionFactory;
//	}

}
