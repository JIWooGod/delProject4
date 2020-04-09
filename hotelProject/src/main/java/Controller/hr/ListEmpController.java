package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.hr.EmpListService;
import service.hr.TchListService;

@Controller
public class ListEmpController {
	@Autowired
	private EmpListService empListService;
	@Autowired
	private TchListService tchListService;
	
	@RequestMapping("/personnel")
	public String list(Model model) {
		empListService.view(model);
		return "hr/personList";
	}
	
	@RequestMapping("/teacher")
	public String list2(Model model) {
		tchListService.view(model);
		return "hr/teacherList";
	}
}
