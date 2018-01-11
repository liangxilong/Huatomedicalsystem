package com.bdqn.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bdqn.model.UserAuthority;
import com.bdqn.service.IUserAuthorityService;

@Controller
@RequestMapping(value="/userAuthority")
@SessionAttributes(value= {"listUesr"})
public class UserAuthorityAction {

	
	@Autowired
	private IUserAuthorityService authorityService;
	
	@RequestMapping("/login")
	public String login(@RequestParam(value="username")String username,
			@RequestParam(value="password")String password,
			Model model) {
		List<UserAuthority> listUesr = authorityService.select(username,password);
		
		Integer i =  listUesr.get(0).getLevel();
		model.addAttribute("listUesr", listUesr);
		
		return "copy";
	}
	
	
	
	
	
}
