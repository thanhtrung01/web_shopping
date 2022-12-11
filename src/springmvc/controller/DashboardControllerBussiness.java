package springmvc.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import springmvc.dao.ProductDAO;
import springmvc.dao.UserDAO;

import springmvc.entity.Product;
import springmvc.service.ProductService;

@Controller
@RequestMapping("/dashboard")
public class DashboardControllerBussiness {

	// de inject thi dung Autowire nho ko

	@Autowired
	private ProductService productService;
	
	@GetMapping("/product")
	public String listProducts(Model theModel) {
		// get customers from the dao
		List<Product> theProducts = productService.getProducts();
		// add the customers to the model
		theModel.addAttribute("products", theProducts);
		return "home";
	}
	//danh sách sản phẩm ở admin
	@GetMapping("/admin/san-pham")
	public String adminListProducts(Model theModel) {
		// get customers from the dao
		List<Product> theProducts = productService.getProducts();
		// add the customers to the model
		theModel.addAttribute("products", theProducts);
		return "admin-product";
	}
	
	@GetMapping("/them-san-pham")
	public String showFormForAdd(Model theModel) {
		Product theProduct = new Product();
		theModel.addAttribute("product", theProduct);
		return "product-form";
	}

	@PostMapping("/cap-nhat-sap-pham")
	public String saveProduct(@ModelAttribute("product") Product theProduct) {
		productService.saveProduct(theProduct);
		return "redirect:/san-pham";
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("productId") int theId, Model theModel) {
		Product theProduct = productService.getProduct(theId);
		theModel.addAttribute("product", theProduct);
		return "product-form";
	}

	@GetMapping("/xoa")
	public String deleteCustomer(@RequestParam("productId") int theId, Model theModel) {
		productService.deleteProduct(theId);
		return "redirect:/san-pham";
	}

	@GetMapping("/search")
	public String searchProducts(@RequestParam("theSearchName") String theSearchName, Model theModel) {
		// search customers from the service
		List<Product> theProducts = productService.searchProducts(theSearchName);
		// add the customers to the model
		theModel.addAttribute("products", theProducts);
		return "home";
	}
	@GetMapping("/")
	public String count(@ModelAttribute("productId") int theId, Model theModel){
		productService.count(theId);
	   return "dashboard";
	}
}

