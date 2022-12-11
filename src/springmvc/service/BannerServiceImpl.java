package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.dao.BannerDAO;
import springmvc.entity.Banner;

@Service
public class BannerServiceImpl implements BannerService {

	@Autowired
	private BannerDAO bannerDAO;

	@Override
	@Transactional
	public List<Banner> getBanners() {
		// TODO Auto-generated method stub
		return bannerDAO.getBanners();
	}

	@Override
	@Transactional
	public void saveBanner(Banner theBanner) {
		// TODO Auto-generated method stub
		bannerDAO.saveBanner(theBanner);
	}

	@Override
	@Transactional
	public Banner getBanner(int theId) {
		// TODO Auto-generated method stub
		return bannerDAO.getBanner(theId);
	}

	@Override
	@Transactional
	public void deleteBanner(int theId) {
		// TODO Auto-generated method stub
		bannerDAO.deleteBanner(theId);
	}

//	@Override
//	@Transactional
//	public List<Product> searchProducts(String theSearchName) {
//		return productDAO.searchProducts(theSearchName);
//	}

}
