package Controller.hr;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.hr.Apply2Command;
import service.hr.Apply2Service;

@Controller
public class ApplyTchController {
	@Autowired
	private Apply2Service apply2Service;
	
	@RequestMapping("/personnel/teacher/apply")
	public String empApply(@RequestParam(value="job") String job, Model model) {
		model.addAttribute("job",job);
		model.addAttribute("apply2Command",new Apply2Command());
		return "manager/hr/apply2";
	}

	@RequestMapping(value="/personnel/teacher/appling2", method=RequestMethod.POST)
	public String empApplying(HttpServletRequest request,Apply2Command apply2Command,
			Model model,Errors errors) {
		//new ApplyCommandValidator().validate(applyCommand,errors);	
		apply2Service.action(request,apply2Command,errors);
		return "redirect:/manager";
	}
}