package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.hr.ApplyService;
import service.hr.RegMailService;

@Controller
public class MailingEmpController {
	@Autowired
	private ApplyService applyService;
	//@Autowired
	//private RegMailService regMailService;
	
	@RequestMapping("/applyMailing")
	public String mailing(
			@RequestParam(value="receiver") String receiver,
			@RequestParam(value="empId") String empId) {
		//regMailService.sendMail(receiver, empId);
		return "redirect:/main";
	}
	@RequestMapping("/congratulate")
	public String congratulation(@RequestParam(value="empId") String empId,
			Model model) {
		applyService.joinAction(empId);
		return "manager/hr/success";
	}
}