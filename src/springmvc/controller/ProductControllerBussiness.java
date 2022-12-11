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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import springmvc.dao.*;
import springmvc.entity.*;
import springmvc.service.*;

@Controller
@RequestMapping("/")
public class ProductControllerBussiness {

	// de inject thi dung Autowire nho ko

	@Autowired
	private ProductService productService;
	@Autowired
	private SliderService sliderService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private BannerService bannerService;

	@RequestMapping("/san-pham")
	public String listProducts(Model theModel) {
		// get customers from the dao
		List<Product> theProducts = productService.getProducts();
		List<Slider> theSliders = sliderService.getSliders();
		List<Category> theCategorys = categoryService.getCategorys();
		List<Banner> theBanners = bannerService.getBanners();
		// add the customers to the model
		theModel.addAttribute("products", theProducts);
		theModel.addAttribute("sliders", theSliders);
		theModel.addAttribute("categorys", theCategorys);
		theModel.addAttribute("banners", theBanners);
		return "home";
	}
	
	@RequestMapping("/shop")
	public String listShops(Model theModel) {
		// get customers from the dao
		List<Product> theProducts = productService.getProducts();
		List<Slider> theSliders = sliderService.getSliders();
		List<Category> theCategorys = categoryService.getCategorys();
		// add the customers to the model
		theModel.addAttribute("shops", theProducts);
		theModel.addAttribute("sliders", theSliders);
		theModel.addAttribute("categorys", theCategorys);
		return "shop";
	}
//	//danh sách sản phẩm ở admin
//	@GetMapping("/admin/san-pham")
//	public String adminListProducts(Model theModel) {
//		// get customers from the dao
//		List<Product> theProducts = productService.getProducts();
//		// add the customers to the model
//		theModel.addAttribute("products", theProducts);
//		return "admin-product";
//	}

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
	
	@GetMapping("/detail")
	public String detailProduct(@RequestParam("slug") String theSlug, Model theModel) {
		List<Product> theProducts = productService.getProducts();
		List<Product> theSlugs = productService.getSlugProduct(theSlug);
		theModel.addAttribute("productdetail", theSlugs);
		theModel.addAttribute("products", theProducts);
		return "detail";
	}
	
	@GetMapping("/danh-muc/")
	public String categoryProduct(@RequestParam("slugCategory") String theSlug, Model theModel) {
		List<Product> theProducts = productService.getProducts();
		List<Product> theSlugs = productService.getSlugProduct(theSlug);
		theModel.addAttribute("productdetail", theSlugs);
		theModel.addAttribute("products", theProducts);
		return "category";
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
	@GetMapping("/search-shop")
	public String searchShops(@RequestParam("keyword") String keyword, Model theModel) {
		// search customers from the service
		List<Product> theShops = productService.searchProducts(keyword);
		// add the customers to the model
		theModel.addAttribute("shops", theShops);
		return "shop";
	}
	@GetMapping("/")
	public String count(@ModelAttribute("productId") int theId, Model theModel){
		productService.count(theId);
	   return "dashboard";
	}
}

