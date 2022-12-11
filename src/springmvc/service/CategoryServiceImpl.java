package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.dao.CategoryDAO;
import springmvc.entity.Category;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;

	@Override
	@Transactional
	public List<Category> getCategorys() {
		// TODO Auto-generated method stub
		return categoryDAO.getCategorys();
	}

	@Override
	@Transactional
	public void saveCategory(Category theCategory) {
		// TODO Auto-generated method stub
		categoryDAO.saveCategory(theCategory);
	}

	@Override
	@Transactional
	public Category getCategory(int theId) {
		// TODO Auto-generated method stub
		return categoryDAO.getCategory(theId);
	}

	@Override
	@Transactional
	public void deleteCategory(int theId) {
		// TODO Auto-generated method stub
		categoryDAO.deleteCategory(theId);
	}

//	@Override
//	@Transactional
//	public List<Product> searchProducts(String theSearchName) {
//		return productDAO.searchProducts(theSearchName);
//	}

}
