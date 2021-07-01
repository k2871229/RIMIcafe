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
	
	// ������ => �� ��ǰ ������, �׷�, ������ ���� ��ǰ ��ü�� �����Ͽ� ����Ʈ�� �Է�
	public ProductDAO() {
		Product coffee = new Product(1001, "����� ��ġ ����", 18000);
		coffee.setPrd_content("����� ���佺�� �������� ���� �� �ִ� ��ġ �����Դϴ�.");
		coffee.setFilename("1001.png");
		coffee.setPrd_category("Coffee");

		Product tea = new Product(2001, "����", 9000);
		tea.setPrd_content("�ϵ� �����翡�� ���� �����ؿ��� �̽��� �������� �ٷ�ϴ�.");
		tea.setFilename("2001.png");
		tea.setPrd_category("Tea");
		
		Product bean = new Product(4001, "�ɳ�AA", 13000);
		bean.setPrd_content("�׳��׳� �ν����Ͽ� �ż��� ���θ��� ����մϴ�.");
		bean.setFilename("4001.png");
		bean.setPrd_category("Bean");

		listOfProducts.add(coffee);
		listOfProducts.add(tea);
		listOfProducts.add(bean);
	}
	// ��̸���Ʈ�� �ܺ����ٺҰ�(private)�̱� ������ ���� ������ get �޼ҵ� �ۼ�
	public ArrayList<Product> getAllProduct(){
		return listOfProducts;
	}
	//��ǰ �� ������ �������� �޼ҵ�(��ǰ id�� �Է�)
	public Product getProductById(Integer prd_code) {
		
		Product productById = null;
		//��ǰ ����Ʈ���� ��ǰ ���̵�� �˻��ؼ� ���̵� ���� ��ǰ ��ü�� ����
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getPrd_code().equals(prd_code)) {
				productById = product;
				break;
			}
		}
	
		return productById;
	}
	
	// ��ǰ �߰��ϴ� �޼ҵ�
	public void addProduct(Product Product) {
		listOfProducts.add(Product);
	}
	
}

