package com.bdqn.dao;

import java.util.List;

import com.bdqn.model.UserAuthority;

public interface UserAuthorityDAO {

	List<UserAuthority> select(String username, String password);
	
}
