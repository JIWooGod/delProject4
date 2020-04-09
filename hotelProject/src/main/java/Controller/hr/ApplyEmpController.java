package Controller.hr;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.hr.ApplyCommand;
import repository.hr.EmpDetailRepository;
import service.hr.ApplyService;
import service.hr.EmpDetailService;

@Controller
public class ApplyEmpController {
	@Autowired
	private ApplyService applyService;
	
	@RequestMapping("/personnel/staff/apply")
	public String empApply(@RequestParam(value="job") String job, Model model) {
		model.addAttribute("job",job);
		model.addAttribute("applyCommand",new ApplyCommand());
		return "hr/apply";
	}
	@RequestMapping(value="/personnel/staff/appling", method=RequestMethod.POST)
	public String empApplying(HttpServletRequest request,ApplyCommand applyCommand,
			Model model,Errors errors,@RequestParam(value="job") String job) {
		//new ApplyCommandValidator().validate(applyCommand,errors);	
		applyService.action(request,applyCommand,errors);
		return "hr/welcome";
	}
}
//