package service.lecture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Controller.hr.DetailTchController;
import model.dto.hr.SubjectDTO;
import model.dto.hr.TeacherDTO;
import repository.hr.TchDetailRepository;
import repository.lecture.LectureDetailRepository;

@Service
public class LectureDetailService {
	@Autowired
	LectureDetailRepository lectureDetailRepository;
	@Autowired
	TchDetailRepository tchDetailRepository;
	
	public void action(Long subjNo, Model model) {
		SubjectDTO dto = new SubjectDTO();
		dto.setSubjNo(subjNo);
		dto = lectureDetailRepository.reposit(dto);
		TeacherDTO tch = new TeacherDTO();
		tch.setTeachNo(Long.parseLong(dto.getTeachNo()));
		tch = tchDetailRepository.reposit(tch);
		
		//String extension = "mp4";
		
		System.out.println("상세보기 페이지 파일명: "+dto.getSubjStore());
		//재생시간 insert
		model.addAttribute("list", dto);
		model.addAttribute("teach",tch);
		//model.addAttribute("extension",extension);
	}
}
