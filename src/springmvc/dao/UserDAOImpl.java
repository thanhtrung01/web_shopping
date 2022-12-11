package springmvc.dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import javax.servlet.ServletException;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.entity.User;

@Repository
public class UserDAOImpl implements UserDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<User> getUsers() {
		// TODO Auto-generated method stub
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// create a query
		Query<User> theQuery = currentSession.createQuery("from User order by id", User.class);
		// execute query and get result list
		List<User> users = theQuery.getResultList();
		// return the results

		return users;
	}

	@Override
	public void saveUser(User theUser) {
		// TODO Auto-generated method stub
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theUser);
	}

	@Override
	public User getUser(int theId) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		User theUser = currentSession.get(User.class, theId);
		return theUser;
	}

	@Override
	public void deleteUser(int theId) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuerry = currentSession.createQuery("delete from User where id=:userId");
		theQuerry.setParameter("userId", theId);
		theQuerry.executeUpdate();
	}

	@Override
	public List<User> searchUsers(String theSearchName) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = null;
		//
		// only search by name if theSearchName is not empty
		//
		if (theSearchName != null && theSearchName.trim().length() > 0) {
			// search for firstName or lastName ... case insensitive
			theQuery = currentSession.createQuery(
					"from User where lower(firstName) like :theName or lower(middleName) like :theName or lower(lastName) like :theName",
					User.class);
			theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
		} else {
			// theSearchName is empty ... so just get all customers
			theQuery = currentSession.createQuery("from User",
					User.class);
		}
		// execute query and get result list
		List<User> users = theQuery.getResultList();
		// return the results
		return users;
	}

//	// Login
//	@Override
//	public List<User> Login() {
//		// TODO Auto-generated method stub
//		// get the current hibernate session
//		Session currentSession = sessionFactory.getCurrentSession();
//		// create a query
//		Query<User> theQuery = currentSession.createQuery("from User", User.class);
//		// execute query and get result list
//		List<User> users = theQuery.getResultList();
//		// return the results
//
//		return users;
//	}
	public boolean login(String userName,String password){
		Session currentSession = sessionFactory.getCurrentSession();
		Query<User> theQuery = currentSession.createQuery("select(u,p) from User (u,p) where u.userName=? and u.Password=?", User.class);
		
		boolean flag = false;
		Object result = theQuery.uniqueResult();
		if(result!=null){
			User user = (User) result;
			if(user.getPassword().equalsIgnoreCase(password)){
				flag = true;
			}
		}
		
		if(flag==true){
			return true;
		}
		else{
			return false;
		}
	}
	@Override
	public long count(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuerry = currentSession.createQuery("COUNT(u) FROM User u WHERE u.id=?1");
		theQuerry.setParameter("userId", theId);
		return theQuerry.executeUpdate();
	}

	@Override
	public List<User> Login() {
		// TODO Auto-generated method stub
		return null;
	}

}
