package repository.hr;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.hr.TeacherDTO;

@Repository
public class TchModifyRepository {
	private String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public Integer reposit(TeacherDTO dto) {
		String statement = namespace + ".tchModify";
		return sqlSession.update(statement,dto);
	}
}
//