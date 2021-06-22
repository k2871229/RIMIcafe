package dto;
import java.io.Serializable;


public class Product implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer prd_code;   //��ǰ�ڵ�
	private String prd_name;	//��ǰ��
	private Integer prd_price;	//��ǰ����
	private String prd_content;	//��ǰ����
	private String prd_category; //��ǰī�װ�
	private String prd_date;	//��¥
	private String prd_filename;//�̹��� ���ϸ�
	private Integer prd_delete;	//��������

	//�⺻������
	public Product() {

	}

	//���̵�, �̸�, �������� ������
	public Product(Integer prd_code, String prd_name, Integer prd_price) {
		super();
		this.prd_code = prd_code;
		this.prd_name = prd_name;
		this.prd_price = prd_price;
	}

	//get, set�޼ҵ� �ڵ�����
	public Integer getPrd_code() {
		return prd_code;
	}

	public void setPrd_code(Integer prd_code) {
		this.prd_code = prd_code;
	}

	public String getPrd_name() {
		return prd_name;
	}

	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}

	public Integer getPrd_price() {
		return prd_price;
	}

	public void setPrd_price(Integer prd_price) {
		this.prd_price = prd_price;
	}

	public String getPrd_content() {
		return prd_content;
	}

	public void setPrd_content(String prd_content) {
		this.prd_content = prd_content;
	}
	
	public String getPrd_category() {
		return prd_category;
	}

	public void setPrd_category(String prd_category) {
		this.prd_category = prd_category;
	}

	public String getPrd_date() {
		return prd_date;
	}

	public void setPrd_date(String prd_date) {
		this.prd_date = prd_date;
	}

	public String getPrd_filename() {
		return prd_filename;
	}

	public void setPrd_filename(String prd_filename) {
		this.prd_filename = prd_filename;
	}

	public Integer getPrd_delete() {
		return prd_delete;
	}

	public void setPrd_delete(Integer prd_delete) {
		this.prd_delete = prd_delete;
	}
	
	
}
