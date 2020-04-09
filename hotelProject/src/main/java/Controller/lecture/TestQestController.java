package Controller.lecture;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

public class TestQestController {
	@RequestMapping(value="/lecture/teacher/test/form",method=RequestMethod.GET)
	public String examUp() {
		
		return "lec/test";
	}
	
	@RequestMapping(value="/lecture/teacher/test/teacherWho",method=RequestMethod.POST)
	public void findWho(@RequestParam(value="tchNo") Long tchNo,
		@RequestParam(value="subjNo") Long subjNo) {
		
	}
}
//