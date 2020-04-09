package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.member.LoginCommand;
import command.member.MemberCommand;
import service.member.AuthService;
import service.member.MemberCreateService;

@Controller
public class MemberController {
	@Autowired
	private AuthService authService;
	@Autowired
	private MemberCreateService memberCreateService;
	
	@RequestMapping("/signInForm")
	public String signInForm() {
		return "member/signInForm";
	}
	
	@RequestMapping(value="/memCreate", method=RequestMethod.POST)
	public String memCreate(MemberCommand memberCommand, HttpServletRequest request) {
		memberCreateService.execute(memberCommand, request);
		return "redirect:/main";
	}
	
	@RequestMapping(value="/loginAction", method=RequestMethod.POST)
	public String loginAction(LoginCommand loginCommand, HttpSession session, Model model) {
		String result = authService.execute(loginCommand, session);
		System.out.println(result);
		if(result.equals("0")) {
			model.addAttribute("error", "아이디 비밀번호를 확인하세요");
			return "member/signInForm";
		} else {
			return "redirect:/main";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}
	
	@RequestMapping("/memDetail")
	public String memDetail() {
		return "member/memDetail";
	}
}



















