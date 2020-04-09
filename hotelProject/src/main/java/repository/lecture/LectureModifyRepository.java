package repository.lecture;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.hr.SubjectDTO;

public class LectureModifyRepository {
	String namespace = "lectureMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public void reposit(SubjectDTO dto) {
		String statement = namespace + ".modifyLec";
		sqlSession.update(statement, dto);
	}
}
//