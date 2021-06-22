package dao;

import java.util.ArrayList;
import dto.Product;



public class ProductDAO {

	//��ǰ�� ��̸���Ʈ�� �����ϴ� ����Ʈ�������δ����� ����
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	// ����ƽ ��ü�� ���� ���� �Է��� ��ǰ�� ����Ǿ� �ֵ��� �Ѵ�.
	private static ProductDAO instance = new ProductDAO();
	// �ѹ� ������� ����ƽ ��ü �ν��Ͻ��� �����Ѵ�.
	public static ProductDAO getInstance() {
		return instance;
	}
	// ��ǰ �߰��ϴ� �޼ҵ�
	public void addProduct(Product newProduct) {
		listOfProducts.add(newProduct);
	}
	// ������ => �� ��ǰ ������, �׷�, ������ ���� ��ǰ ��ü�� �����Ͽ� ����Ʈ�� �Է�
	public ProductDAO() {
		Product coffee = new Product(1001, "����� ��ġ ����", 18000);
		coffee.setPrd_content("����� ���佺�� �������� ���� �� �ִ� ��ġ �����Դϴ�.");
		coffee.setPrd_date("sysdate()");
		coffee.setPrd_filename("1001.png");
		coffee.setPrd_delete(0);

		Product tea = new Product(2001, "����", 9000);
		tea.setPrd_content("�ϵ� �����翡�� ���� �����ؿ��� �̽��� �������� �ٷ�ϴ�.");
		tea.setPrd_date("sysdate()");
		tea.setPrd_filename("2001.png");
		tea.setPrd_delete(0);
		
		Product juice = new Product(3001, "�����꽺", 8000);
		juice.setPrd_content("â�� ������ �״�� ���Ƴ־� ���� �ǰ��� �꽺�Դϴ�.");
		juice.setPrd_date("sysdate()");
		juice.setPrd_filename("3001.png");
		juice.setPrd_delete(0);
		
		Product bean = new Product(4001, "�ɳ�AA", 13000);
		bean.setPrd_content("�ϵ� �����翡�� ���� �����ؿ��� �̽��� �������� �ٷ�ϴ�.");
		bean.setPrd_date("sysdate()");
		bean.setPrd_filename("4001.png");
		bean.setPrd_delete(0);

		listOfProducts.add(coffee);
		listOfProducts.add(tea);
		listOfProducts.add(juice);
		listOfProducts.add(bean);
	}
	// ��̸���Ʈ�� �ܺ����ٺҰ�(private)�̱� ������ ���� ������ get �޼ҵ� �ۼ�
	public ArrayList<Product> getAllProduct(){
		return listOfProducts;
	}
	//��ǰ �� ������ �������� �޼ҵ�(��ǰ id�� �Է�)
	public Product getProductById(String prd_code) {
		
		Product productById = null;
		//��ǰ ����Ʈ���� ��ǰ ���̵�� �˻��ؼ� ���̵� ���� ��ǰ ��ü�� ����
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getPrd_code().equals(prd_code)) {
				productById = product; break;
			}
		}
	
		return productById;
	}
	
	
	
}

