package in.pickmyclick.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import in.pickmyclick.modal.UserDto;
import in.pickmyclick.service.UserService;

@Controller
public class PickLoginController {
	
	@Autowired
	private UserService userService;

	private static final Logger logger = Logger.getLogger(PickLoginController.class);
	
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public ModelAndView showRegistrationForm(WebRequest request, Model model) {
	   UserDto userDto = new UserDto();
	   model.addAttribute("user", userDto);
	   ModelAndView modelAndView = new ModelAndView("signUp");
	   return modelAndView;
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public ModelAndView registerUserAccount(@ModelAttribute("user") @Valid UserDto accountDto, 
	  BindingResult result, WebRequest request, Errors errors) {
	   // UserDto registered = new UserDto();
	   /* if (!result.hasErrors()) {
	        registered = createUserAccount(accountDto, result);
	    }
	    if (registered == null) {
	        result.rejectValue("email", "message.regError");
	    }
	    if (result.hasErrors()) {
	        return new ModelAndView("signUp", "user", accountDto);
	    } 
	    else {
	        return new ModelAndView("login", "user", accountDto);
	    }*/
	    
	    logger.info("User "+accountDto);
	    userService.save(accountDto);
	    return new ModelAndView("signUp", "user", accountDto);
	}
	/*private UserDto createUserAccount(UserDto accountDto, BindingResult result) {
	    UserDto registered = null;
	    try {
	        registered = service.registerNewUserAccount(accountDto);
	    } catch (EmailExistsException e) {
	        return null;
	    }
	    return registered;
	}*/
	
	/**Welcome Page is index.jsp
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		logger.info("Home Page");
		model.addAttribute("greeting", "Welcome GUEST, Nice to see you on Pick My Click");
		return "index";
	}

	/**Login of Registered Users 
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String userPage(ModelMap model) {
		logger.info("User Login");
		model.addAttribute("userName", getPrincipal());
		return "user";
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminPage(ModelMap model) {
		logger.info("Admin Login");
		model.addAttribute("adminUser", getPrincipal());
		return "admin";
	}
	
	@RequestMapping(value = "/db", method = RequestMethod.GET)
	public String dbaPage(ModelMap model) {
		model.addAttribute("dbUser", getPrincipal());
		return "dba";
	}

	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("user", getPrincipal());
		return "accessDenied";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() throws Exception {
		return "login";
	}

	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){    
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/index?logout";
	}

	private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}

}