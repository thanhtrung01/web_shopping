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

import springmvc.entity.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	// need to inject the session factory
		@Autowired
		private SessionFactory sessionFactory;
		
		//Lấy danh sách sản phẩm sắp xếp theo id
		@Override
		public List<Product> getProducts() {
			// TODO Auto-generated method stub
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			// create a query
			Query<Product> theQuery = currentSession.createQuery("from Product order by id", Product.class);
			// execute query and get result list
			List<Product> products = theQuery.getResultList();
			// return the results
			
			return products;
		}
		
		@Override
		public List<Product> getProductAll() {
			// TODO Auto-generated method stub
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			// create a query
			Query<Product> theQuery = currentSession.createQuery("from Product order by id", Product.class);
			// execute query and get result list
			List<Product> products = theQuery.getResultList();
			// return the results
			
			return products;
		}
		
		
		
		@Override
		public void saveProduct(Product theProduct) {
			// TODO Auto-generated method stub
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			currentSession.saveOrUpdate(theProduct);
		}

		@Override
		public Product getProduct(int theId) {
			// TODO Auto-generated method stub
			Session currentSession = sessionFactory.getCurrentSession();
			Product theUser = currentSession.get(Product.class, theId);
			return theUser;
		}
		
		@Override
		public void getParamProduct(int theId) {
			// TODO Auto-generated method stub
			Session currentSession = sessionFactory.getCurrentSession();
			Query theQuerry = currentSession.createQuery("from Product where id=:productId");
			theQuerry.setParameter("productId", theId);
			theQuerry.executeUpdate();
		}

		
		@Override 
		public Product getParamSlugProduct(String theSlug) { 
			//Auto-generated method stub 
			Session currentSession = sessionFactory.getCurrentSession(); 
			Query theQuerry = currentSession.createQuery("from Product where slug=:slug");
			theQuerry.setParameter("slug", theSlug); 
			theQuerry.executeUpdate();
			return null; 
		}
		 
		@Override
		public List<Product> getSlugProduct(String theSlug) {
			// TODO Auto-generated method stub
			Session currentSession = sessionFactory.getCurrentSession(); 
			Query<Product> theQuerry = currentSession.createQuery("from Product where slug=:slug", Product.class);
			theQuerry.setParameter("slug", theSlug); 
//			theQuerry.executeUpdate();
			List<Product> slug = theQuerry.getResultList();
			return slug;
		}

		@Override
		public void deleteProduct(int theId) {
			// TODO Auto-generated method stub
			Session currentSession = sessionFactory.getCurrentSession();
			Query theQuerry = currentSession.createQuery("delete from Product where id=:productId");
			theQuerry.setParameter("productId", theId);
			theQuerry.executeUpdate();
		}

		@Override
		public List<Product> searchProducts(String theSearchName) {

			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			Query theQuery = null;
			//
			// only search by name if theSearchName is not empty
			//
			if (theSearchName != null && theSearchName.trim().length() > 0) {
			// search for firstName or lastName ... case insensitive
				theQuery =currentSession.createQuery("from Product where lower(title) like :theName", Product.class);
				theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
			} else {
			// theSearchName is empty ... so just get all customers
				theQuery =currentSession.createQuery("from Product",
				Product.class);
			}
			// execute query and get result list
			List<Product> users = theQuery.getResultList();
			// return the results
			return users;
		}
		
		@Override
		public List<Product> searchShops(String keyword) {

			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			Query theQuery = null;
			//
			// only search by name if theSearchName is not empty
			//
			if (keyword != null && keyword.trim().length() > 0) {
			// search for firstName or lastName ... case insensitive
				theQuery =currentSession.createQuery("from Product where lower(title) like :theName", Product.class);
				theQuery.setParameter("theName", "%" + keyword.toLowerCase() + "%");
			} else {
			// theSearchName is empty ... so just get all customers
				theQuery =currentSession.createQuery("from Product",
				Product.class);
			}
			// execute query and get result list
			List<Product> users = theQuery.getResultList();
			// return the results
			return users;
		}
		
		@Override
		public long count(int theId) {
			Session currentSession = sessionFactory.getCurrentSession();
			Query theQuerry = currentSession.createQuery("SELECT COUNT(u) FROM Product u WHERE u.productId=?1");
			theQuerry.setParameter("productId", theId);
			return theQuerry.executeUpdate();
		}

}

