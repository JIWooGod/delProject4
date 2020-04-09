package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.hr.Apply2Service;
import service.hr.ApplyService;

public class MailingTchController {
	@Autowired
	private Apply2Service apply2Service;
	
	@RequestMapping("/applyMailing")
	public String mailing(@RequestParam(value="num") String num,
			@RequestParam(value="receiver") String receiver,
			@RequestParam(value="empId") String empId) {
		Integer i = apply2Service.joinAction(num, receiver, empId);
		if(i>0) {
			return "hr/success";
		}else {
			return "hr/fail";
		}
	}
}
