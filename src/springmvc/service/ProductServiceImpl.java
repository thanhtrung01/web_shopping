package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.dao.ProductDAO;
import springmvc.entity.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	@Override
	@Transactional
	public List<Product> getProducts() {
		// TODO Auto-generated method stub
		return productDAO.getProducts();
	}
	
	@Override
	@Transactional
	public List<Product> getProductAll() {
		// TODO Auto-generated method stub
		return productDAO.getProducts();
	}
	
	@Override
	@Transactional
	public void saveProduct(Product theProduct) {
		// TODO Auto-generated method stub
		productDAO.saveProduct(theProduct);
	}

	@Override
	@Transactional
	public Product getProduct(int theId) {
		// TODO Auto-generated method stub
		return productDAO.getProduct(theId);
	}

	@Override
	@Transactional
	public List<Product> getSlugProduct(String theSlug) {
		// TODO Auto-generated method stub
		return productDAO.getSlugProduct(theSlug);
	}

	/*
	 * @Override public Product getParamSlugProduct(String theSlug) { // TODO
	 * Auto-generated method stub return productDAO.getParamSlugProduct(theSlug); }
	 */
	@Override
	@Transactional
	public void deleteProduct(int theId) {
		// TODO Auto-generated method stub
		productDAO.deleteProduct(theId);
	}

	@Override
	@Transactional
	public List<Product> searchProducts(String theSearchName) {
		return productDAO.searchProducts(theSearchName);
	}
	
	@Override
	@Transactional
	public List<Product> searchShops(String keyword) {
		return productDAO.searchProducts(keyword);
	}

	@Override
	@Transactional
	public Long count(int theId) {
		// TODO Auto-generated method stub
		return productDAO.count(theId);
	}


}
