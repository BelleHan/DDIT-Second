package damanna.admin.service;

import damanna.admin.dao.AdminDaoImpl;
import damanna.admin.dao.IAdminDao;

public class AdminServiceImpl implements IAdminService {
	private IAdminDao adminDao;
	
	private static AdminServiceImpl service;
	
	private AdminServiceImpl() {
		adminDao = AdminDaoImpl.getInstance();
	}
	
	public static AdminServiceImpl getInstance() {
		if(service==null) service = new AdminServiceImpl();
		return service;
	}
	
	
@Override
public String loginAdmin(String adminId) {
	// TODO Auto-generated method stub
	return adminDao.loginAdmin(adminId);
}

}
