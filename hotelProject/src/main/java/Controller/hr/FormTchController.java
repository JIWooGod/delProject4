package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.hr.Apply2Command;
import service.hr.TchDetailService;

@Controller
public class FormTchController {
	@Autowired
	private TchDetailService tchDetailService;
	
	@RequestMapping(value="/teacher/modify", method=RequestMethod.GET)
	public String form(@RequestParam(value="teachNo") Long teachNo, Model model,
			Apply2Command applyCommand) {
		tchDetailService.action(teachNo, model);
		model.addAttribute("apply2Command",applyCommand);
		return "manager/hr/modify2";
	}
}
//