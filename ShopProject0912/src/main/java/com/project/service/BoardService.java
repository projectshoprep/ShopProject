package com.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

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
	
	
	
}
