package com.project.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.dto.FileDTO;
import com.project.dto.NoticeDTO;
import com.project.dto.NoticeMainDTO;

@Mapper
public interface BoardMapper {

	List<NoticeMainDTO> selectNoticeContent(String pageNo);
	int selectNoticeCount();
	String selectBoardImageNo();
	String selectImageFile(String photono);
	int insertBoardImage(Map<String, Object> map);
	String selectNoticeNo();
	int insertNoticeBoard(NoticeDTO dto);
	int insertFileList(FileDTO fileDTO);
	
}
