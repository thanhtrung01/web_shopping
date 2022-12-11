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

import springmvc.entity.Slider;

@Repository
public class SliderDAOImpl implements SliderDAO {
	// need to inject the session factory
		@Autowired
		private SessionFactory sessionFactory;
		
		//Lấy danh sách sản phẩm sắp xếp theo id
		@Override
		public List<Slider> getSliders() {
			// TODO Auto-generated method stub
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			// create a query
			Query<Slider> theQuery = currentSession.createQuery("from Slider order by id", Slider.class);
			// execute query and get result list
			List<Slider> sliders = theQuery.getResultList();
			// return the results
			
			return sliders;
		}
		
		@Override
		public void saveSlider(Slider theSlider) {
			// TODO Auto-generated method stub
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			currentSession.saveOrUpdate(theSlider);
		}

		@Override
		public Slider getSlider(int theId) {
			// TODO Auto-generated method stub
			Session currentSession = sessionFactory.getCurrentSession();
			Slider theUser = currentSession.get(Slider.class, theId);
			return theUser;
		}

		@Override
		public void deleteSlider(int theId) {
			// TODO Auto-generated method stub
			Session currentSession = sessionFactory.getCurrentSession();
			Query theQuerry = currentSession.createQuery("delete from Slider where id=:sliderId");
			theQuerry.setParameter("sliderId", theId);
			theQuerry.executeUpdate();
		}
}

