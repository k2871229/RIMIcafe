package dto;
import java.io.Serializable;


public class Product implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer prd_code;   //��ǰ�ڵ�
	private String prd_name;	//��ǰ��
	private Integer prd_price;	//��ǰ����
	private String prd_content;	//��ǰ����
	private String prd_category; //��ǰī�װ�
	private String filename;//�̹��� ���ϸ�

	//�⺻������
	public Product() {
		super();
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

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
}
