package com.iu.s5.member;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s5.AbstractTestCase;
import com.iu.s5.member.MemberVO;

public class MemberDAOTest extends AbstractTestCase {

	@Autowired
	private MemberDAO memberDAO;

	@Test
	public void daoTest()throws Exception{
		this.boardWriteTest();
	}

	
	public void daoIsnull() {
		assertNotNull(memberDAO);
	}
	
	
	public void boardWriteTest()throws Exception {
		String id="";
		String pw="";
		String name="";
		String email="";
		String phone="";
		String age="";
		
		for(int i=0; i<120; i++) {
			MemberVO memberVO = new MemberVO();
			
				id="iu";
				pw="alert";
				name="samsung";
				email="@naver.com";
				phone="0100000000";
	
			memberVO.setId(id+i);
			memberVO.setPw(pw);
			memberVO.setName(name+i);
			memberVO.setEmail(memberVO.getId()+email);
			memberVO.setPhone(phone+i);
			memberVO.setAge(i);
			
			int result = memberDAO.memberJoin(memberVO);
			if(i==50 || i==100) {
				Thread.sleep(1000);
			
		}
//		assertEquals(1, result);
	}
	
	
	
	
//	public List<BoardVO> boardListTest()throws Exception{
//		return noticeDAO.boardList();
//	}
}
}
