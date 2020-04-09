package repository.hr;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.hr.EmployeeDTO;

public class PassEmpRepository {
	String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public void reposit(EmployeeDTO dto) {
		String statement = namespace + ".passStateUp";
		sqlSession.update(statement, dto);
	}
}
