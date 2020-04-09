package repository.hr;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.hr.TeacherDTO;

public class PassTchRepository {
	String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public void reposit(TeacherDTO dto) {
		String statement = namespace + ".passStateUp2";
		sqlSession.update(statement, dto);
	}
}
