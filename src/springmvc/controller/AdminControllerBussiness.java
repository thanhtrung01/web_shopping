package springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.entity.Product;
/*import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import springmvc.dao.UserDAO;*/
import springmvc.entity.User;
import springmvc.service.ProductService;
import springmvc.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminControllerBussiness {

	// de inject thi dung Autowire nho ko

	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;

	@GetMapping("/dashboard")
	public String listCustomers(Model theModel) {
		// get customers from the dao
		List<User> theUsers = userService.getUsers();
		// add the customers to the model
		theModel.addAttribute("users", theUsers);
		return "dashboard";
	}
	@GetMapping("/user")
	public String listUsers(Model theModel) {
		// get customers from the dao
		List<User> theUsers = userService.getUsers();
		// add the customers to the model
		theModel.addAttribute("users", theUsers);
		return "users";
	}
	
	@GetMapping("/product")
	public String listProducts(Model theModel) {
		// get customers from the dao
		List<Product> theProducts = productService.getProductAll();
		// add the customers to the model
		theModel.addAttribute("products", theProducts);
		return "products";
	}

	@GetMapping("/showFormAdd")
	public String showFormForAdd(Model theModel) {
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		return "user-form";
	}

	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User theUser) {
		userService.saveUser(theUser);
		return "redirect:/admin/dashboard";
	}

	@GetMapping("/edit-user")
	public String showFormForUpdate(@RequestParam("userId") int theId, Model theModel) {
		User theUser = userService.getUser(theId);
		theModel.addAttribute("user", theUser);
		return "edit-user";
	}

	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("userId") int theId, Model theModel) {
		userService.deleteUser(theId);
		return "redirect:/admin/dashboard";
	}

	@GetMapping("/search")
	public String searchCustomers(@RequestParam("keyword") String keyword, Model theModel) {
		// search customers from the service
		List<User> theUsers = userService.searchUsers(keyword);
		// add the customers to the model
		theModel.addAttribute("users", theUsers);
		return "users";
	}
	@GetMapping("/count")
	public String count(@ModelAttribute("userId") int theId, Model theModel){
		userService.count(theId);
		theModel.addAttribute("userId",theId);
	   return "users";
	}
}

