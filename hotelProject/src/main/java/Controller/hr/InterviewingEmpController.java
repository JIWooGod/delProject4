package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.hr.InterviewCommand;
import service.hr.JobInterviewService;

@Controller
public class InterviewingEmpController {
	@Autowired
	private JobInterviewService jobInterviewService;
	
	@RequestMapping(value="/personnel/interview/scoring",method=RequestMethod.POST)
	public String scoring(InterviewCommand interviewCommand, Model model) {
		jobInterviewService.action(interviewCommand,model);
		return "redirect:/personnel/detail/"+interviewCommand.getApplierNo();
	}
}