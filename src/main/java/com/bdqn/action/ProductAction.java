package com.bdqn.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bdqn.model.Product;
import com.bdqn.service.IProductService;

@Controller
@RequestMapping(value="/product")
public class ProductAction {

	
	@Autowired
	private IProductService productService;
	
	@RequestMapping("/all")
	public String hello(Model model) {
		List<Product> list = productService.getAllProduct();
		for (Product product : list) {
			System.out.println(product);
		}
		model.addAttribute("list",list);  
		return "index";
	}
	
	@RequestMapping("/add")
	public String addProduct() {
		Product p = new Product();
		p.setName("洗发水");
		p.setPrice(333.3F);
		p.setDescription("很好");
		productService.save(p);
		return "index";
	}
}
