package Controller.lecture;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.lecture.LectureDeletingSerivce;

@Controller
public class LectureDeletingController {
	@Autowired
	private LectureDeletingSerivce lectureDeletingSerivce;
	
	@RequestMapping("lecture/teacher/deleting")
	public String delete(@RequestParam(value="num") Long num,
			HttpServletRequest request) {
		lectureDeletingSerivce.action(request, num);
		return "redirect:/lecture";
	}
}
