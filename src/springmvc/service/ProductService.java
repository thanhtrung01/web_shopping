package springmvc.service;
import java.util.List;
import springmvc.entity.Product;
public interface ProductService {
	public List<Product> getProducts();
	public List<Product> getProductAll();
	public void saveProduct(Product theProduct);
	public Product getProduct(int theId);
	public List<Product> getSlugProduct(String theSlug);
	public void deleteProduct(int theId);
	public List<Product> searchProducts(String theSearchName);
	public List<Product> searchShops(String keyword);
	public Long count(int theId);
	/* public Product getParamSlugProduct(String theSlug); */
}