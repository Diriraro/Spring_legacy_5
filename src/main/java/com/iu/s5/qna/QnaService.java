package com.iu.s5.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.s5.board.BoardService;
import com.iu.s5.board.BoardVO;
import com.iu.s5.board.page.Pager;

@Service
public class QnaService implements BoardService  {
	
	@Autowired
	private QnaDAO qnaDAO;

	@Override
	public List<BoardVO> boardList(Pager pager) throws Exception {
		
		return null;
	}

	@Override
	public BoardVO boardSelect(long num) throws Exception {
		
		return null;
	}

	@Override
	public int boardWrite(BoardVO boardVO) throws Exception {
		
		return 0;
	}

	@Override
	public int boardUpdate(BoardVO boardVO) throws Exception {
		// 
		return 0;
	}

	@Override
	public int boardDelete(long num) throws Exception {
		
		return 0;
	}

}
