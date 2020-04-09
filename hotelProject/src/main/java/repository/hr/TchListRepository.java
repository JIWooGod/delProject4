package repository.hr;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.hr.TeacherDTO;

@Repository
public class TchListRepository {
	private String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public List<TeacherDTO> listView() {
		String statement = namespace + ".selectTchList";
		return sqlSession.selectList(statement);
	}

}
