package repository.lecture;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.hr.SubjectDTO;

@Repository
public class LectureListRepository {
	String namespace = "lectureMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public List<SubjectDTO> reposit() {
		String statement = namespace + ".videoList";
		return sqlSession.selectList(statement);
	}
}
