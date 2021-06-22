package dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class OrderDTO {
	private int ord_code = 0;
	private int mem_code = 0;
	private int prd_code = 0;
	private Date ord_date = null;
	private int ord_total = 0;
	private int ord_cancel = 0;
	
	public OrderDTO() {
		super();
	}

	public OrderDTO(int ord_code, int mem_code, int prd_code, Date ord_date, int ord_total, int ord_cancel) {
		super();
		this.ord_code = ord_code;
		this.mem_code = mem_code;
		this.prd_code = prd_code;
		this.ord_date = ord_date;
		this.ord_total = ord_total;
		this.ord_cancel = ord_cancel;
	}
	

	public int getOrd_code() {
		return ord_code;
	}

	public void setOrd_code(int ord_code) {
		this.ord_code = ord_code;
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

	public Date getOrd_date() {
		return ord_date;
	}

	public void setOrd_date(Date ord_date) {
		this.ord_date = ord_date;
	}

	public int getOrd_total() {
		return ord_total;
	}

	public void setOrd_total(int ord_total) {
		this.ord_total = ord_total;
	}

	public int getOrd_cancel() {
		return ord_cancel;
	}

	public void setOrd_cancel(int ord_cancel) {
		this.ord_cancel = ord_cancel;
	}

	@Override
	public String toString() {
		return "OrderDTO [ord_code=" + ord_code + ", mem_code=" + mem_code + ", prd_code=" + prd_code + ", ord_date="
				+ ord_date + ", ord_total=" + ord_total + ", ord_cancel=" + ord_cancel + "]";
	}
	
}

