package repository.hr;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.hr.EmploymentDTO;
import model.dto.hr.JobPositionDTO;

public class ViewJobRepository {
	String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public List<JobPositionDTO> reposit(Long deptNo) {
		String statement = namespace + ".searchJob";
		return sqlSession.selectList(statement, deptNo);
	}
	public void reposit2(EmploymentDTO dto) {
		String statement = namespace + ".contracting";
		sqlSession.insert(statement, dto);
	}
	public EmploymentDTO reposit3(EmploymentDTO dto) {
		String statement = namespace + ".viewCont";
		return sqlSession.selectOne(statement,dto);
	}
}