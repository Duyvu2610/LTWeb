package dao;

import entity.User;

public interface UserDAO {
	boolean insert(User user);
	void edit(User user);
	User getUser(String userName);
}
