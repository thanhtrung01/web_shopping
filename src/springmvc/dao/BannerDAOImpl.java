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

import springmvc.entity.Banner;

@Repository
public class BannerDAOImpl implements BannerDAO {
	// need to inject the session factory
		@Autowired
		private SessionFactory sessionFactory;
		
		//Lấy danh sách sản phẩm sắp xếp theo id
		@Override
		public List<Banner> getBanners() {
			// TODO Auto-generated method stub
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			// create a query
			Query<Banner> theQuery = currentSession.createQuery("from Banner order by id", Banner.class);
			// execute query and get result list
			List<Banner> Banners = theQuery.getResultList();
			// return the results
			
			return Banners;
		}
		
		@Override
		public void saveBanner(Banner theBanner) {
			// TODO Auto-generated method stub
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			currentSession.saveOrUpdate(theBanner);
		}

		@Override
		public Banner getBanner(int theId) {
			// TODO Auto-generated method stub
			Session currentSession = sessionFactory.getCurrentSession();
			Banner theBanner = currentSession.get(Banner.class, theId);
			return theBanner;
		}

		@Override
		public void deleteBanner(int theId) {
			// TODO Auto-generated method stub
			Session currentSession = sessionFactory.getCurrentSession();
			Query theQuerry = currentSession.createQuery("delete from Banner where id=:bannerId");
			theQuerry.setParameter("bannerId", theId);
			theQuerry.executeUpdate();
		}
}

