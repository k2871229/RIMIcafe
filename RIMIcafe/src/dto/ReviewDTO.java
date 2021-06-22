package dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ReviewDTO {
	private int rev_num = 0;
	private String rev_title = null;
	private String rev_content = null;
	private int mem_code = 0;
	private int prd_code = 0;
	private int rev_delete = 0;
	private int rev_rating = 0;
	private Date prd_date = null;
	
	public ReviewDTO() {
		super();
	}

	public ReviewDTO(int rev_num, String rev_title, String rev_content, int mem_code, int prd_code, int rev_delete,
			int rev_rating, Date prd_date) {
		super();
		this.rev_num = rev_num;
		this.rev_title = rev_title;
		this.rev_content = rev_content;
		this.mem_code = mem_code;
		this.prd_code = prd_code;
		this.rev_delete = rev_delete;
		this.rev_rating = rev_rating;
		this.prd_date = prd_date;
	}

	public int getRev_num() {
		return rev_num;
	}

	public void setRev_num(int rev_num) {
		this.rev_num = rev_num;
	}

	public String getRev_title() {
		return rev_title;
	}

	public void setRev_title(String rev_title) {
		this.rev_title = rev_title;
	}

	public String getRev_content() {
		return rev_content;
	}

	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}

	public int getMem_code() {
		return mem_code;
	}

	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}

	public int getPrd_code() {
		return prd_code;
	}

	public void setPrd_code(int prd_code) {
		this.prd_code = prd_code;
	}

	public int getRev_delete() {
		return rev_delete;
	}

	public void setRev_delete(int rev_delete) {
		this.rev_delete = rev_delete;
	}

	public int getRev_rating() {
		return rev_rating;
	}

	public void setRev_rating(int rev_rating) {
		this.rev_rating = rev_rating;
	}

	public Date getPrd_date() {
		return prd_date;
	}

	public void setPrd_date(Date prd_date) {
		this.prd_date = prd_date;
	}

	@Override
	public String toString() {
		return "ReviewDTO [rev_num=" + rev_num + ", rev_title=" + rev_title + ", rev_content=" + rev_content
				+ ", mem_code=" + mem_code + ", prd_code=" + prd_code + ", rev_delete=" + rev_delete + ", rev_rating="
				+ rev_rating + ", prd_date=" + prd_date + "]";
	}
	
}
