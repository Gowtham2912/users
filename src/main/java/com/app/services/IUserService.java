package com.app.services;



import org.springframework.stereotype.Service;

import com.app.entities.User;

@Service
public interface IUserService {
	
	public User save(User user);

	public User getOne(int id);

	public void deleteById(int id);

	public Object findAll();

	//public Product findById(int id);


}
