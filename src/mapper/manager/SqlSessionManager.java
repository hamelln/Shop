package mapper.manager;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	
	 private static SqlSessionManager instance;
	    InputStream inputStream;
	    SqlSessionFactory sqlSessionFactory;
	 
	    private SqlSessionManager() {
	        String resource = "mapper/config/mybatis-config.xml";
	        try {
	            inputStream = Resources.getResourceAsStream(resource);
	            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    }
	 
	    public static SqlSessionManager getInstance() {
	        if (instance == null) {
	            instance = new SqlSessionManager();
	        }
	        return instance;
	    }
	 
	    public SqlSession getSession() {
	        SqlSession session = null;
	        session = sqlSessionFactory.openSession();
	        return session;
	    }
	
}