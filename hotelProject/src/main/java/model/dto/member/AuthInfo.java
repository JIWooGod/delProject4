package model.dto.member;

public class AuthInfo {
	private String id;
	private String email;
	private String name;
	private String pw;
	private String tel;
	private String addr;
	private String memNo;
	
	public AuthInfo(String id, String email, String name, String pw, String tel, String addr, String memNo) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.pw = pw;
		this.tel = tel;
		this.addr = addr;
		this.memNo = memNo;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getMemNo() {
		return memNo;
	}
	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}
	
	
	
}
