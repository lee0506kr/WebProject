package controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.MemberService;

@Controller
@RequestMapping("/a")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		
		return  "login";
	}
	
	
	@RequestMapping("/login")
	public String login(HttpSession session,@RequestParam Map<String, Object> login) {
		
		
		System.out.println("¾îµô±î??" + login);
		
		String id = (String) login.get("id");
		String pw = (String) login.get("pw");
		

		if(service.login(login)) {
			System.out.println("12"+id+pw);
			session.setAttribute("id", id);
			return "main";
		}else {
			return "login";
		
		}
		
	}

	
	@RequestMapping("/main")
	public String main(HttpSession session, Model model) {
		String userid = (String) session.getAttribute("userid");

		if (userid == null)
			return "login";
		else {
			
			return "main";
		}

	}
}
