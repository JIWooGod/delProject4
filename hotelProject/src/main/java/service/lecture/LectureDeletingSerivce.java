package service.lecture;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.dto.hr.SubjectDTO;
import repository.lecture.FileGetRepository;
import repository.lecture.LectureDeleteRepository;
import repository.lecture.LectureDetailRepository;

@Service
public class LectureDeletingSerivce {
	@Autowired
	private LectureDeleteRepository lectureDeleteRepository;
	@Autowired
	private LectureDetailRepository lectureDetailRepository;
	
	public void action(HttpServletRequest request, Long num) {
		SubjectDTO dto = new SubjectDTO();
		String path = "\\lec\\video\\";
		String realPath = request.getServletContext().getRealPath(path);
		System.out.println(realPath);
		dto.setSubjNo(num);
		dto = lectureDetailRepository.reposit(dto);
		String store = dto.getSubjStore();
		if(store!=null) {
			File file = new File(realPath + "\\" + store);
			file.delete();
			System.out.println(store+"삭제하기");
			lectureDeleteRepository.reposit(dto.getSubjNo());
		}
	}
}