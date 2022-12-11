package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.dao.SliderDAO;
import springmvc.entity.Slider;

@Service
public class SliderServiceImpl implements SliderService {

	@Autowired
	private SliderDAO sliderDAO;

	@Override
	@Transactional
	public List<Slider> getSliders() {
		// TODO Auto-generated method stub
		return sliderDAO.getSliders();
	}

	@Override
	@Transactional
	public void saveSlider(Slider theSlider) {
		// TODO Auto-generated method stub
		sliderDAO.saveSlider(theSlider);
	}

	@Override
	@Transactional
	public Slider getSlider(int theId) {
		// TODO Auto-generated method stub
		return sliderDAO.getSlider(theId);
	}

	@Override
	@Transactional
	public void deleteSlider(int theId) {
		// TODO Auto-generated method stub
		sliderDAO.deleteSlider(theId);
	}

//	@Override
//	@Transactional
//	public List<Product> searchProducts(String theSearchName) {
//		return productDAO.searchProducts(theSearchName);
//	}

}
