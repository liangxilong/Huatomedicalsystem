package com.bdqn.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.dao.UserAuthorityDAO;
import com.bdqn.model.UserAuthority;
import com.bdqn.service.IUserAuthorityService;

@Service
@Transactional
public class UserAuthorityServiceImpl implements IUserAuthorityService{

	@Autowired
	private UserAuthorityDAO authorityDAO;

	@Override
	public List<UserAuthority> select(String username, String password) {
		return authorityDAO.select(username, password);
	}

	
	
}
