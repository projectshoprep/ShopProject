package com.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.dto.NoticeMainDTO;

@Mapper
public interface BoardMapper {

	List<NoticeMainDTO> selectNoticeContent(String pageNo);
	int selectNoticeCount();
	
}
