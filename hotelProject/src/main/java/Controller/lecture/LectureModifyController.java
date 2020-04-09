package Controller.lecture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.hr.SubjectCommand;
import service.lecture.LectureDetailService;

@Controller
public class LectureModifyController {
	@Autowired
	private LectureDetailService lectureDetailService;
	
	@RequestMapping(value="/lecture/teacher/modify", method = RequestMethod.GET)
	public String update(@RequestParam(value="num") Long num, Model model) {
		lectureDetailService.action(num, model);
		return "lec/lectureModify";
	}
}
//