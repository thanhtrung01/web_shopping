package springmvc.dao;

import java.util.List;

import springmvc.entity.Product;

public interface ProductDAO {
	public List<Product> getProducts();
	public List<Product> getProductAll();
	public void saveProduct(Product theUser);
	public Product getProduct(int theId);
	public List<Product> getSlugProduct(String theSlug);
	public void deleteProduct(int theId);
	public List<Product> searchProducts(String theSearchName);
	public long count(int theId);
	public List<Product> searchShops(String keyword);
	public void getParamProduct(int theId);
	/* public Product getParamSlugProduct(String theSlug); */
	Product getParamSlugProduct(String theSlug);
}
