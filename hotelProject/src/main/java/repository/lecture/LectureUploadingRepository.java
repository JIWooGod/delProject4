package repository.lecture;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.hr.SubjectDTO;

@Repository
public class LectureUploadingRepository {
	String namespace = "lectureMapper";
	@Autowired
	private SqlSession sqlSession;

	public void reposit(SubjectDTO dto) {
		String statement = namespace + ".addVideo1";
		sqlSession.insert(statement, dto);
	}
}
//