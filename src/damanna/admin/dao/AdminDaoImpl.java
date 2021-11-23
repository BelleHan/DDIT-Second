package damanna.admin.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import damanna.util.SqlMapClientFactory;

public class AdminDaoImpl implements IAdminDao {

	private static AdminDaoImpl dao;
	private SqlMapClient smc; // iBatis객체가 저장될 변수 선언
	
	private AdminDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static AdminDaoImpl getInstance() {
		if(dao == null)
				dao = new AdminDaoImpl();
		
		return dao;
	}
	
	
	
	@Override
	public String loginAdmin(String adminId) {
		String login = null;
		
		try {
			
			login = (String) smc.queryForObject("admin.adminLogin", adminId);
			
		} catch (SQLException e) {			
			login = null;
			e.printStackTrace();
		}
		return login;
	}

}
