package services;

import dao.UserDAO;
import dao.UserDAOImpl;
import entity.User;

public class UserServiceImpl implements UserService{
	UserDAO userDao = new UserDAOImpl();

	@Override
	public boolean create(User user) {
		// TODO Auto-generated method stub
		return userDao.insert(user);
		
	}

	@Override
	public boolean exist(String email, String pw) {
		if (userDao.getUser(email) == null) return false;
		return userDao.getUser(email).password().equals(pw);
	}

}
