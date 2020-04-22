package com.iu.s5.member.memberFile;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s5.AbstractTestCase;


public class MemberFileDAOTest extends AbstractTestCase {
	
	@Autowired
	private MemberFileDAO memberFileDAO;
	
	@Test
	public void fileInsertTest() throws Exception{
		MemberFileVO memberFileVO = new MemberFileVO();
		memberFileVO.setId("123");
		memberFileVO.setFileName("a.123");
		memberFileVO.setOriName("s.123");
		
		int result = memberFileDAO.fileInsert(memberFileVO);
		
		assertEquals(1, result);
		
	}

}
