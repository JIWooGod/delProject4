package repository.lecture;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.hr.SubjectDTO;

@Repository
public class LectureDetailRepository {
	String namespace = "lectureMapper";
	String statement = null;
	@Autowired
	private SqlSession sqlSession;
	
	public SubjectDTO reposit(SubjectDTO dto) {
		statement = namespace + ".videoView";
		return sqlSession.selectOne(statement, dto);
	}

}
//