package repository.hr;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.member.AuthInfo;

@Repository
public class UserCheckRepository {
	String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public AuthInfo check(String userId) {
		String statement = namespace + ".userCheck";
		return sqlSession.selectOne(statement, userId);
	}
}
