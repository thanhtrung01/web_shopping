package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.dao.UserDAO;
import springmvc.entity.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public List<User> getUsers() {
		// TODO Auto-generated method stub
		return userDAO.getUsers();
	}

	@Override
	@Transactional
	public void saveUser(User theUser) {
		// TODO Auto-generated method stub
		userDAO.saveUser(theUser);
	}

	@Override
	@Transactional
	public User getUser(int theId) {
		// TODO Auto-generated method stub
		return userDAO.getUser(theId);
	}

	@Override
	@Transactional
	public void deleteUser(int theId) {
		// TODO Auto-generated method stub
		userDAO.deleteUser(theId);
	}

	@Override
	@Transactional
	public List<User> searchUsers(String theSearchName) {
		return userDAO.searchUsers(theSearchName);
	}
	
	@Override
	@Transactional
	public List<User> Login() {
		// TODO Auto-generated method stub
		return userDAO.Login();
	}

	@Override
	@Transactional
	public Long count(int theId) {
		// TODO Auto-generated method stub
		return userDAO.count(theId);
	}
}
