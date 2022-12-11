package springmvc.dao;

import java.util.List;

import springmvc.entity.Category;

public interface CategoryDAO {
	public List<Category> getCategorys();
	public void saveCategory(Category theSlider);
	public Category getCategory(int theId);
	public void deleteCategory(int theId);
}