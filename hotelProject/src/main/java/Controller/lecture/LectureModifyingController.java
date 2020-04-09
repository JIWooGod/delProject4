package Controller.lecture;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import service.lecture.LectureModifyService;

@Controller
public class LectureModifyingController {
	@Autowired
	private LectureModifyService lectureModifyService;
	
	@RequestMapping(value="/lecture/teacher/modifying", method=RequestMethod.POST)
	public String modifying(Model model,HttpServletRequest request,
			@RequestParam("subjNum") Long subjNum,
			@RequestParam("subjName") String subjName,
			@RequestParam(value="subjVideo",required = false) MultipartFile subjVideo,
			@RequestParam("subjDay") Long subjDay,
			@RequestParam("subjCnt") String subjCnt) {
		lectureModifyService.action(subjNum,
									subjName,
									subjVideo,
									subjDay,
									subjCnt,request,model);
		return "redirect:/lecture/"+subjNum;
	}
}
//