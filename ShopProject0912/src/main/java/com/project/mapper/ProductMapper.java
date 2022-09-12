package com.project.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.dto.FileDTO;
import com.project.dto.ProductDTO;
import com.project.dto.categoryDTO;

@Mapper
public interface ProductMapper {

	List<ProductDTO> selectProductList();

	int deleteProduct(String str);

	void insertProduct(ProductDTO productdto);

	String selectProductNO();

	int insertFileList(FileDTO fileDTO);

	ProductDTO selectProductDTO(String productno);

	List<FileDTO> selectFilePath(String productno);

	String selectFile(Map<String, Object> map);

	List<categoryDTO> selectcategoryList();

	List<ProductDTO> selectProductDetailList(String categoryno);

}
