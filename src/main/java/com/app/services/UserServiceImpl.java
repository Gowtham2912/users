package com.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.entities.User;
import com.app.repositories.IUser;

@Service
public class UserServiceImpl implements IUserService{
	
	
	@Autowired
	private IUser userRepository;

	@Override
	public User save(User user) {
		// TODO Auto-generated method stub
		
		return userRepository.save(user);
	}

	@Override
	public User getOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Object findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
