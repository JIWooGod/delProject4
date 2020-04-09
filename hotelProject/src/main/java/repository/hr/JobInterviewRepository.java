package repository.hr;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.hr.JobintvDTO;

public class JobInterviewRepository {
	String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlsession;
	
	public void reposit(JobintvDTO dto) {
		String statement = namespace + ".answerInterview";
		sqlsession.insert(statement,dto);
	}
	public String repositSeq() {
		String statement = namespace + ".sequence";
		return sqlsession.selectOne(statement);
	}
}
//