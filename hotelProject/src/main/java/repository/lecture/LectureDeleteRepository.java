package repository.lecture;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LectureDeleteRepository {
	String namespace = "lectureMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public void reposit(Long num) {
		String statement = namespace + ".deleteLec";
		sqlSession.delete(statement, num);
	}
}
