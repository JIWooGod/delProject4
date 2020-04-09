package Controller.lecture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.lecture.LectureListService;

@Controller
public class LectureListController {
	@Autowired
	private LectureListService lectureListService;

	@RequestMapping("/lecture")
	public String list(Model model) {
		lectureListService.action(model);
		return "lec/lectureList";
	}
}
//