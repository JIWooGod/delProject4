package Controller.lecture;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.hr.SubjectCommand;
import service.lecture.LectureUploadingService;

@Controller
public class LectureUpController {
	@Autowired
	private LectureUploadingService lectureUploadingService;
	
	@RequestMapping(value="/lecture/teahcer/upload", method=RequestMethod.GET)
	public String upload(Model model) {
		model.addAttribute("subjectCommand", new SubjectCommand());
		return "lec/lectureUp";
	}
	@RequestMapping(value="/lecture/uploading", method=RequestMethod.POST)
	public String upload2(HttpServletRequest request, Model model,
			SubjectCommand subjectCommand) {
		model.addAttribute("subjectCommand", subjectCommand);
		lectureUploadingService.action(request, subjectCommand);
		return "redirect:/lecture";
	}
}
//