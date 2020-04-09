package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.hr.Pass1stEmpService;

@Controller
public class Pass1stEmpController {
	@Autowired
	private Pass1stEmpService pass1stEmpService;
	
	@RequestMapping(value="/personnel/detail/paperPass", method=RequestMethod.POST)
	public String paper(@RequestParam(value="empNo") Long empNo,
						@RequestParam(value="passState") String passState) {
		pass1stEmpService.action(empNo,passState);
		return "redirect:/personnel";
	}
}