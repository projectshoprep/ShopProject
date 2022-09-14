package com.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.project.dto.CartDTO;
import com.project.dto.ColorDTO;
import com.project.dto.FileDTO;
import com.project.dto.ProductDTO;
import com.project.dto.SizesDTO;
import com.project.dto.categoryDTO;
import com.project.mapper.ProductMapper;

@Service
public class ProductService {

	private ProductMapper mapper;

	public ProductService(ProductMapper mapper) {
		this.mapper = mapper;
	}

	public List<ProductDTO> selectProductList() {
		return mapper.selectProductList();
	}

	public int deleteProduct(String[] index) {
		int count=0;
		for(int i = 0; i <index.length;i++) {
		String str = index[i];
		count += mapper.deleteProduct(str);
		}
		return count;
	}

	public String insertproduct(ProductDTO productdto) {
		String productcode = mapper.selectProductNO();
		productdto.setProductno(productcode);
		mapper.insertProduct(productdto);
		System.out.println("Adfbadfbadfb");
		return productcode;
	}

	public int insertFileList(FileDTO fileDTO) {
		return mapper.insertFileList(fileDTO);
	}

	public ProductDTO selectProductDTO(String productno) {
		return mapper.selectProductDTO(productno);
	}

	public List<FileDTO> selectFilePath(String productno) {
		return mapper.selectFilePath(productno);
	}

	public String selectFile(String productno,int productphotono) {
		System.out.println(productno+"adfb"+productphotono);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productno", productno);
		map.put("productphotono", productphotono);
		System.out.println(mapper.selectFile(map));
		return mapper.selectFile(map);
	}

	public List<categoryDTO> selectcategoryList() {
		return mapper.selectcategoryList();
	}

	public List<ProductDTO> selectProductDetailList(String categoryno) {
		return mapper.selectProductDetailList(categoryno);
	}

	public List<CartDTO> selectCartProduct(String memberId) {
		return mapper.selectCartProduct(memberId);
	}

	public int insertCartProduct(CartDTO cdto) {
		return mapper.insertCartProdcut(cdto);
	}

	public CartDTO selectCartDTO(CartDTO cdto) {
		return mapper.selectCartDTO(cdto);
	}

	public void deleteCart(HashMap<Object, Object> map) {
		mapper.deleteCart(map);
	}
	
	public int selectCart(CartDTO cdto) {
		return mapper.selectCart(cdto);
	}

	public ProductDTO ProductDetailView(String productno) {
		return mapper.ProductDetailView(productno);
	}

	
	public List<SizesDTO> selectProductSizesList(String productno) {
		return mapper.selectProductSizesList(productno);
	}

	public List<ColorDTO> selectProductColorList(String productno) {
		return mapper.selectProductColorList(productno);
	}
	
	public int updateQuantity(CartDTO cdto) {
		return mapper.updateQuantity(cdto);
	}
	
}
