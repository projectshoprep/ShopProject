package com.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.project.dto.FileDTO;
import com.project.dto.NoticeDTO;
import com.project.dto.NoticeMainDTO;
import com.project.mapper.BoardMapper;

@Service
public class BoardService {
	private BoardMapper boardMapper;

	public BoardService(BoardMapper boardMapper) {
		this.boardMapper = boardMapper;
	}

	public List<NoticeMainDTO> selectNoticeContent(String pageNo) {
		return boardMapper.selectNoticeContent(pageNo);
	}

	public int selectNoticeCount() {
		return boardMapper.selectNoticeCount();
	}

	public String uploadImage(String path, String noticeno) {
		String photono = boardMapper.selectBoardImageNo();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("path", path);
		map.put("photono", photono);
		map.put("noticeno", noticeno);
		boardMapper.insertBoardImage(map);
		return photono;
	}

	public String selectImageFile(String photono) {
		return boardMapper.selectImageFile(photono);
	}

	public String selectNoticeNo() {
		return boardMapper.selectNoticeNo();
	}

	public int insertNoticeBoard(NoticeDTO dto, String noticeno) {
		dto.setNoticeno(noticeno);	
		return boardMapper.insertNoticeBoard(dto);	
	}

	public int insertNoticeFileList(FileDTO fileDTO) {
		return boardMapper.insertFileList(fileDTO);
	}
	
	
	
}
