package damanna.vo;

public class FreeBoardVO {

	private int free_id;
	private String member_id;
	private String free_title;
	private String free_content;
	private String free_date;
	private int free_count;
	private String free_report;
	private String free_drop;
	
	public FreeBoardVO() { }

	public FreeBoardVO(int free_id, String member_id, String free_title, String free_content, String free_date,
			int free_count, String free_report, String free_drop) {
		super();
		this.free_id = free_id;
		this.member_id = member_id;
		this.free_title = free_title;
		this.free_content = free_content;
		this.free_date = free_date;
		this.free_count = free_count;
		this.free_report = free_report;
		this.free_drop = free_drop;
	}

	public int getFree_id() {
		return free_id;
	}
	public void setFree_id(int free_id) {
		this.free_id = free_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getFree_title() {
		return free_title;
	}
	public void setFree_title(String free_title) {
		this.free_title = free_title;
	}
	public String getFree_content() {
		return free_content;
	}
	public void setFree_content(String free_content) {
		this.free_content = free_content;
	}
	public String getFree_date() {
		return free_date;
	}
	public void setFree_date(String free_date) {
		this.free_date = free_date;
	}
	public int getFree_count() {
		return free_count;
	}
	public void setFree_count(int free_count) {
		this.free_count = free_count;
	}
	public String getFree_report() {
		return free_report;
	}
	public void setFree_report(String free_report) {
		this.free_report = free_report;
	}
	public String getFree_drop() {
		return free_drop;
	}
	public void setFree_drop(String free_drop) {
		this.free_drop = free_drop;
	}
	
	
}
