package Controller.mainController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.member.MemberCreateService;
import service.room.RoomFormService;

@Controller
public class MainController {
	@Autowired
	MemberCreateService memberCreateService;
	@Autowired
	RoomFormService roomFormService;
	@RequestMapping("/main")
	public String mainPage() {
		return "/main/main";
	}
	@RequestMapping("/about")
	public String aboutOne() {
		return "/about/about_1";
	}
	@RequestMapping("/about2")
	public String aboutTwo() {
		return "/about/about_2";
	}
	
	
	@RequestMapping("/manager")
	public String managerPage(Model model) {
		
		roomFormService.paySum(model);
		return "/manager/managerIndex";
	}
	
	
	@RequestMapping("/blank")
	public String blankPage() {
		return "/manager/blank";
	}
	@RequestMapping("/memberDetail")
	public String detail(@RequestParam(value = "id")String userId,Model model) {
		memberCreateService.memberDetail(userId,model);
		return "/member/memDetail";
	}
	
}
