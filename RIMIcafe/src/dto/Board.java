package dto;

public class Board {
	private int brd_num;
	private String brd_title;
	private String mem_id;
	private String brd_content;
	private String brd_date;
	private int brd_delete;
	
	public int getBrd_num() {
		return brd_num;
	}
	public void setBrd_num(int brd_num) {
		this.brd_num = brd_num;
	}
	public String getBrd_title() {
		return brd_title;
	}
	public void setBrd_title(String brd_title) {
		this.brd_title = brd_title;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getBrd_content() {
		return brd_content;
	}
	public void setBrd_content(String brd_content) {
		this.brd_content = brd_content;
	}
	public String getBrd_date() {
		return brd_date;
	}
	public void setBrd_date(String brd_date) {
		this.brd_date = brd_date;
	}
	public int getBrd_delete() {
		return brd_delete;
	}
	public void setBrd_delete(int brd_delete) {
		this.brd_delete = brd_delete;
	}
}
