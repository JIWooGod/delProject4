package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.hr.ApplyService;

public class MailingEmpController {
	@Autowired
	private ApplyService applyService;
	
	@RequestMapping("/applyMailing")
	public String mailing(@RequestParam(value="num") String num,
			@RequestParam(value="receiver") String receiver,
			@RequestParam(value="empId") String empId) {
		Integer i = applyService.joinAction(num, receiver, empId);
		if(i>0) {
			return "hr/success";
		}else {
			return "hr/fail";
		}
	}
	@RequestMapping
	public String congratulation() {
		return "redirect:/main";
	}
}
//