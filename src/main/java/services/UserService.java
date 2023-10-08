package services;

import entity.User;

public interface UserService {
	boolean create(User user);
	boolean exist(String userName, String pw);

}
