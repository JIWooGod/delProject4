package Controller.lecture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import service.lecture.LectureDetailService;

@Controller
public class LectureDetailController {
	@Autowired
	private LectureDetailService lectureDetailService;
	
	@RequestMapping("/lecture/teacher/{subjNo}")
	public String detail(@PathVariable(value="subjNo") Long subjNo, Model model) {
		lectureDetailService.action(subjNo, model);
		return "manager/lec/lectureView";
	}
}
//