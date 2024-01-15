package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.repository.IUserRepository;

@Service
public class UserService {

    @Autowired
    private IUserRepository repo;

    public User createUser(User user) {
        return repo.save(user);
    }

    public List<User> getUsers() {
        return repo.findAll();
    }
}
