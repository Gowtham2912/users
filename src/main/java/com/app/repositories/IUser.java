package com.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
//import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Repository;

import com.app.entities.User;

@Repository
public interface IUser extends JpaRepository<User, Integer> {

}
