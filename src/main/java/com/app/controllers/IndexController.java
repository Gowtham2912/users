package com.app.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.entities.User;
import com.app.repositories.IUser;
import com.app.services.IUserService;

@Controller
@RequestMapping(value= {"","user"})
public class IndexController {
	
	@Autowired
	private IUser userService;
	
	
	
	@GetMapping("/users")
	public String users(ModelMap modelMap) {
		modelMap.put("users",userService.findAll());
		return "user/users";
	}
	
	@RequestMapping(value="delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		//castRepository.saveAll(movie.getCast());
		//castService.deleteByMovie(id);
		userService.deleteById(id);
		
		//System.out.print
		return "redirect:/user/users";
	}


	@RequestMapping(value="index",method=RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("user",new User());
		//System.out.print(product);
		
		return "user/index";
	}
	
	/*
	 * @PostMapping(value="/index") public String index(@ModelAttribute("product")
	 * Product product) {
	 * 
	 * productService.save(product); return "redirect:/index";
	 */
	@PostMapping(value="index")
	public String index(@ModelAttribute("user") User user) {
		
		userService.save(user);
		return "user/index";
	}
	
	

	@RequestMapping(value="update/{id}",method=RequestMethod.GET)
	public String update(ModelMap modelMap,@PathVariable String id) {
		//product product1=productService.findById(id);
		modelMap.put("user",new User());
		return "user/update";
	}
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	public String update(@ModelAttribute("user") User user){
		
		User user1=userService.getOne(user.getId());
		
		user1.setId(user.getId());
		user1.setName(user.getName());
		user1.setSurname(user.getSurname());
		user1.setAddress(user.getAddress());
		userService.save(user1);
		return "redirect:/users";
	}
}
