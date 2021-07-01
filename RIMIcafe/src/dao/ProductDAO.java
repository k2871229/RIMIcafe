package dao;

import java.util.ArrayList;
import dto.Product;



public class ProductDAO {

	//상품을 어레이리스트에 저장하는 리스트오브프로덕츠를 생성
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	// 스테틱 객체를 만들어서 새로 입력한 제품이 저장되어 있도록 한다.
	private static ProductDAO instance = new ProductDAO();
	// 한번 만들어진 스테틱 객체 인스턴스를 리턴한다.
	public static ProductDAO getInstance() {
		return instance;
	}
	
	// 생성자 => 새 상품 아이폰, 그램, 갤럭시 탭의 상품 객체를 생성하여 리스트에 입력
	public ProductDAO() {
		Product coffee = new Product(1001, "브라질 더치 원액", 18000);
		coffee.setPrd_content("브라질 산토스의 구수함을 느낄 수 있는 더치 원액입니다.");
		coffee.setFilename("1001.png");
		coffee.setPrd_category("Coffee");

		Product tea = new Product(2001, "녹차", 9000);
		tea.setPrd_content("하동 녹차밭에서 직접 공수해오는 싱싱한 녹차만을 다룹니다.");
		tea.setFilename("2001.png");
		tea.setPrd_category("Tea");
		
		Product bean = new Product(4001, "케냐AA", 13000);
		bean.setPrd_content("그날그날 로스팅하여 신선한 원두만을 취급합니다.");
		bean.setFilename("4001.png");
		bean.setPrd_category("Bean");

		listOfProducts.add(coffee);
		listOfProducts.add(tea);
		listOfProducts.add(bean);
	}
	// 어레이리스트는 외부접근불가(private)이기 때문에 접근 가능한 get 메소드 작성
	public ArrayList<Product> getAllProduct(){
		return listOfProducts;
	}
	//상품 상세 정보를 가져오는 메소드(제품 id를 입력)
	public Product getProductById(Integer prd_code) {
		
		Product productById = null;
		//제품 리스트에서 제품 아이디로 검사해서 아이디가 같은 제품 객체를 리턴
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getPrd_code().equals(prd_code)) {
				productById = product;
				break;
			}
		}
	
		return productById;
	}
	
	// 상품 추가하는 메소드
	public void addProduct(Product Product) {
		listOfProducts.add(Product);
	}
	
}

