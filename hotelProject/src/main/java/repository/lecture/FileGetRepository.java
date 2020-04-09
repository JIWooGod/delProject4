package repository.lecture;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FileGetRepository {
	String namespace = "lectureMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public String reposit(Long num) {
		String statement = namespace + ".findFile";
		return sqlSession.selectOne(statement, num);
	}
}