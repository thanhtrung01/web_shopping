package springmvc.service;

import java.util.List;

import springmvc.entity.Category;

public interface CategoryService {
	public List<Category> getCategorys();
	public void saveCategory(Category theCategory);
	public Category getCategory(int theId);
	public void deleteCategory(int theId);
}
