package service.lecture;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.hr.SubjectDTO;
import repository.lecture.LectureListRepository;

@Service
public class LectureListService {
	@Autowired
	private LectureListRepository lectureListRepository;
	
	public void action(Model model) {		
		List<SubjectDTO> list = lectureListRepository.reposit();
		model.addAttribute("list",list);
	}
}