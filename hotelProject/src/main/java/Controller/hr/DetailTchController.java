package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import service.hr.EmpDetailService;
import service.hr.TchDetailService;

@Controller
public class DetailTchController {
	@Autowired
	private TchDetailService tchDetailService;
	
	@RequestMapping("/teacher/detail/{tchNo}")
	public String empDetail(@PathVariable(value="tchNo") Long tchNo,
			Model model) {
		tchDetailService.action(tchNo, model);
		return "hr/detail2";
	}
}
//