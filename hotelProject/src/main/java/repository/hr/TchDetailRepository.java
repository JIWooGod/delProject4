package repository.hr;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.hr.TeacherDTO;

public class TchDetailRepository {
	private String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public TeacherDTO reposit(TeacherDTO dto) {
		String statement = namespace + ".detailView2";
		return sqlSession.selectOne(statement, dto);
	}
}
//