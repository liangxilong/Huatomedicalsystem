package com.bdqn.service;

import java.util.List;

import com.bdqn.model.UserAuthority;

public interface IUserAuthorityService {

	List<UserAuthority> select(String username, String password);


}
