function CheckAddProduct() {
	// 태그의 id를 가지고 변수에 저장
	var name = document.getElementById("prd_name");
	var price = document.getElementById("prd_price");
	
	// 상품명 체크
	if (name.value.length < 4 || name.value.length > 12) {
		alert("[상품명]\n최소 4자에서 최대 50자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	// 상품 가격 체크
	if (price.value.length == 0 || isNaN(price.value)) {
		alert("[가격]\n숫자만 입력하세요");
		price.select();
		price.focus();
		return false;
	}

	if (price.value < 0) {
		alert("[가격]\n음수를 입력할 수 없습니다");
		price.select();
		price.focus();
		return false;
	} else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/, price,
			"[가격]\n소수점 둘째 자리까지만 입력하세요"))
		return false;

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	//위에 체크 if함수들을 전부 체크한 후, 이상이 없으면 서버로 보냄
	 document.newProduct.submit()
}


