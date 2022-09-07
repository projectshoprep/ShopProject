package com.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.project.dto.FileDTO;
import com.project.dto.ProductDTO;
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

	


}
