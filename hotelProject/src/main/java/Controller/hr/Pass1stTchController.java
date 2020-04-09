package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.hr.Pass1stTchService;

@Controller
public class Pass1stTchController {
	@Autowired
	private Pass1stTchService pass1stTchService;
	
	@RequestMapping(value="/teacher/detail/paperPass", method=RequestMethod.POST)
	public String paper(@RequestParam(value="teachNo") Long teachNo,
						@RequestParam(value="passState") String passState) {
		pass1stTchService.action(teachNo,passState);
		return "redirect:/teacher";
	}
}
//