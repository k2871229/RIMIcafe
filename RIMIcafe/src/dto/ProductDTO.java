package dto;

import java.sql.Date;

import java.io.Serializable;


public class ProductDTO implements Serializable{
	private int prd_code;
	private String prd_name;
	private int prd_price;
	private String prd_content;
	private Date prd_date;
	
	public ProductDTO() {

	}

	public ProductDTO(int prd_code, String prd_name, int prd_price, String prd_content, Date prd_date) {
		super();
		this.prd_code = prd_code;
		this.prd_name = prd_name;
		this.prd_price = prd_price;
		this.prd_content = prd_content;
		this.prd_date = prd_date;
	}

	public int getPrd_code() {
		return prd_code;
	}

	public void setPrd_code(int prd_code) {
		this.prd_code = prd_code;
	}

	public String getPrd_name() {
		return prd_name;
	}

	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}

	public int getPrd_price() {
		return prd_price;
	}

	public void setPrd_price(int prd_price) {
		this.prd_price = prd_price;
	}

	public String getPrd_content() {
		return prd_content;
	}

	public void setPrd_content(String prd_content) {
		this.prd_content = prd_content;
	}

	public Date getPrd_date() {
		return prd_date;
	}

	public void setPrd_date(Date prd_date) {
		this.prd_date = prd_date;
	}

	@Override
	public String toString() {
		return "ProductDTO [prd_code=" + prd_code + ", prd_name=" + prd_name + ", prd_price=" + prd_price
				+ ", prd_content=" + prd_content + ", prd_date=" + prd_date + "]";
	}
	
}
