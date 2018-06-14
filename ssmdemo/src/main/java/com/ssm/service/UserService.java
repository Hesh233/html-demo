package com.ssm.service;
import  com.ssm.domain.User;
public interface UserService {
    public User getUserById(int userId);
    public User checkLogin(String username, String password);
    public User checkRegister(String username, String password, String type);
}