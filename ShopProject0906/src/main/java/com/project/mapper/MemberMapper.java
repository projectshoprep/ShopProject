package com.project.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.dto.AdminDTO;
import com.project.dto.MemberDTO;
import com.project.dto.ProductDTO;

@Mapper
public interface MemberMapper {
	
	MemberDTO login(Map<String, Object> membermap);
	AdminDTO managerLogin(String managerNo, String managerName);
	int insertManager(Map<String, Object> map);
	int insertMember(MemberDTO dto);
	int updateMember(MemberDTO memberDto);
	MemberDTO selectLoginMember(String id);
	List<ProductDTO> selectAllProduct(String memberId);
	List<MemberDTO> selectAllMember();
	int selectMemberCount();
	List<MemberDTO> selectMemberList(int pageNo);
	List<MemberDTO> selectSearchMember(Map<String, Object> map);
	int selectMemberOrderCount();
	List<MemberDTO> selectMemberOrderList(int pageNo);
	
}
