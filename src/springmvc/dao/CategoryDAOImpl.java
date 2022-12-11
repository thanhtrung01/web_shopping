package springmvc.dao;
import java.util.List;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.entity.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	// need to inject the session factory
		@Autowired
		private SessionFactory sessionFactory;
		
		//Lấy danh sách sản phẩm sắp xếp theo id
		@Override
		public List<Category> getCategorys() {
			// TODO Auto-generated method stub
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			// create a query
			Query<Category> theQuery = currentSession.createQuery("from Category", Category.class);
			// execute query and get result list
			List<Category> categorys = theQuery.getResultList();
			// return the results
			
			return categorys;
		}
		
		@Override
		public void saveCategory(Category theCategory) {
			// TODO Auto-generated method stub
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			currentSession.saveOrUpdate(theCategory);
		}

		@Override
		public Category getCategory(int theId) {
			// TODO Auto-generated method stub
			Session currentSession = sessionFactory.getCurrentSession();
			Category theUser = currentSession.get(Category.class, theId);
			return theUser;
		}

		@Override
		public void deleteCategory(int theId) {
			// TODO Auto-generated method stub
			Session currentSession = sessionFactory.getCurrentSession();
			Query theQuerry = currentSession.createQuery("delete from Category where id=:categoryId");
			theQuerry.setParameter("categoryId", theId);
			theQuerry.executeUpdate();
		}
}

