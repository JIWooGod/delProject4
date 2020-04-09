package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import repository.hr.EmpDetailRepository;
import service.hr.EmpDetailService;
import service.hr.JobInterviewService;

@Controller
public class InterviewEmpController {
	@Autowired
	private EmpDetailService empDetailService;
	
	@RequestMapping("/personnel/interview/{num}")
	public String contract(@PathVariable(value="num") Long num,Model model) {
		empDetailService.action(num, model);
		return "hr/interviewEmp";
	}
	@RequestMapping(value="/personnel/interview/interviewer", method=RequestMethod.POST)
	public String interviewer(@RequestParam(value="empNo") Long empNo,Model model) {
		empDetailService.action(empNo, model);
		return "hr/result";
	}
}