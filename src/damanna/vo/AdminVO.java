package damanna.vo;

public class AdminVO {
	private String admin_Id;
	private String admin_Pw;
	
	
	
	
	public AdminVO(String admin_Id, String admin_Pw) {
		super();
		this.admin_Id = admin_Id;
		this.admin_Pw = admin_Pw;
	}
	public String getAdmin_Id() {
		return admin_Id;
	}
	public void setAdmin_Id(String admin_Id) {
		this.admin_Id = admin_Id;
	}
	public String getAdmin_Pw() {
		return admin_Pw;
	}
	public void setAdmin_Pw(String admin_Pw) {
		this.admin_Pw = admin_Pw;
	}
	
}
