package Controller.hr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.hr.Apply2Command;
import service.hr.TchModifyService;

@Controller
public class ModifyTchController {
	@Autowired
	private TchModifyService tchModifyService;
	@RequestMapping(value="/teacher/modifying", method=RequestMethod.POST)
	public String modifying(@RequestParam(value="teachNo") Long teachNo,
			Apply2Command applyCommand, Model model, HttpSession session) {
		Integer i = tchModifyService.action(teachNo,applyCommand,model,session);
		if(i>0) {
			return "redirect:/teacher/detail/"+teachNo;
		}else {
			return "manager/hr/modify2";
		}
	}
}