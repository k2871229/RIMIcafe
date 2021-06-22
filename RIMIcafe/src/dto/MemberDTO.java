package dto;

import java.sql.Date;


public class MemberDTO {
	private int mem_code;
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_address;
	private String mem_phone;
	private int mem_access;
	private Date mem_date;
	
	public MemberDTO() {

	}

	public MemberDTO(int mem_code, String mem_id, String mem_pw, String mem_name, String mem_address, String mem_phone,
			int mem_access, Date mem_date) {
		super();
		this.mem_code = mem_code;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_address = mem_address;
		this.mem_phone = mem_phone;
		this.mem_access = mem_access;
		this.mem_date = mem_date;
	}
	
	

	public int getMem_code() {
		return mem_code;
	}

	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_address() {
		return mem_address;
	}

	public void setMem_address(String mem_address) {
		this.mem_address = mem_address;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public int getMem_access() {
		return mem_access;
	}

	public void setMem_access(int mem_access) {
		this.mem_access = mem_access;
	}

	public Date getMem_date() {
		return mem_date;
	}

	public void setMem_date(Date mem_date) {
		this.mem_date = mem_date;
	}

	@Override
	public String toString() {
		return "MemberDTO [mem_code=" + mem_code + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name="
				+ mem_name + ", mem_address=" + mem_address + ", mem_phone=" + mem_phone + ", mem_access=" + mem_access
				+ ", mem_date=" + mem_date + "]";
	}
	
}



