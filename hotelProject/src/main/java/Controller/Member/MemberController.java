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
	
	@RequestMapping("/memCreateForm")
	public String memCreateForm() {
		return "member/memCreateForm";
	}
	
	//회원가입
	@RequestMapping(value="/memCreateForm", method=RequestMethod.POST)
	public String memCreate(MemberCommand memberCommand, HttpServletRequest request, Model model) {
		String result = memberCreateService.execute(memberCommand, request);
		//중복가입불가
		if(result.equals("0")) {
			model.addAttribute("error", "중복된 id 입니다.");
			return "member/memCreateForm";
		} else {
			return "redirect:/main";
		}
	}
	
	
	// 로그인
	@RequestMapping(value="/loginAction", method=RequestMethod.POST)
	public String loginAction(LoginCommand loginCommand, HttpSession session, Model model) {
		String result = authService.execute(loginCommand, session);
		System.out.println(result);
		if(result.equals("0")) {
			model.addAttribute("error", "아이디 비밀번호를 확인하세요.");
			return "member/signInForm";
		} else {
			return "redirect:/main";
		}
	}
	
	//id 중복체크 팝업
	@RequestMapping("/idChkPop")
	public String idChkPop(@RequestParam(value="id") String memId, HttpServletRequest request, Model model) {
		String result = memberCreateService.idChkPop(request, memId);
		System.out.println("중복 결과 = " + result);
		// 중복이므로 가입 불가
		if(result.equals("0")) {
			model.addAttribute("f");
			return "member/idChkPopNo";
		// 중복 없음 가입 가능
		} else {
			model.addAttribute("t");
			return "member/idChkPopYes";
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



















