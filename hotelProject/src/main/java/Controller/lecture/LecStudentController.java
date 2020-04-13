package Controller.lecture;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//학생들이 출석했을 때
public class LecStudentController {
	@RequestMapping("/lecture/stutdent/class/{aa}")
	public String detail(@PathVariable(value="aa") Long aa,
			@RequestParam(value="totalTime") Long totalIme,
			@RequestParam(value="mineLoc") Long mineLoc,
			@RequestParam(value="mineTime") Long mineTime) {
		return "manager/lec/lectureView";
	}
}
//