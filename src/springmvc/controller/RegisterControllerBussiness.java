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
/*import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import springmvc.dao.UserDAO;*/
import springmvc.entity.User;
import springmvc.service.UserService;

@Controller
@RequestMapping("/register")
public class RegisterControllerBussiness {

	// de inject thi dung Autowire nho ko

	@Autowired
	private UserService userService;

	@RequestMapping("")
	public String listCustomers(Model theModel) {
		// get customers from the dao
		List<User> theUsers = userService.getUsers();
		// add the customers to the model
		theModel.addAttribute("logins", theUsers);
		return "login";
	}

	/*
	 * @GetMapping("/showFormAdd") public String showFormForAdd(Model theModel) {
	 * User theUser = new User(); theModel.addAttribute("user", theUser); return
	 * "user-form"; }
	 * 
	 * @PostMapping("/saveUser") public String saveUser(@ModelAttribute("user") User
	 * theUser) { userService.saveUser(theUser); return "redirect:/admin/dashboard";
	 * }
	 * 
	 * @GetMapping("/showFormForUpdate") public String
	 * showFormForUpdate(@RequestParam("userId") int theId, Model theModel) { User
	 * theUser = userService.getUser(theId); theModel.addAttribute("user", theUser);
	 * return "user-form"; }
	 * 
	 * @GetMapping("/delete") public String deleteCustomer(@RequestParam("userId")
	 * int theId, Model theModel) { userService.deleteUser(theId); return
	 * "redirect:/admin/dashboard"; }
	 * 
	 * @GetMapping("/search") public String
	 * searchCustomers(@RequestParam("theSearchName") String theSearchName, Model
	 * theModel) { // search customers from the service List<User> theUsers =
	 * userService.searchUsers(theSearchName); // add the customers to the model
	 * theModel.addAttribute("users", theUsers); return "dashboard"; }
	 * 
	 * @GetMapping("/") public String count(@ModelAttribute("userId") int theId,
	 * Model theModel){ userService.count(theId); return "dashboard"; }
	 */
}

