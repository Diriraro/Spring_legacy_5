package com.iu.s5.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.s5.member.memberPage.Pager;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	public List<MemberVO> memberList(Pager pager)throws Exception{
		
		pager.makeRow();
		long totalCount = memberDAO.memberCount(pager);
		System.out.println(totalCount);
		pager.makePage(totalCount);
		
		return memberDAO.memberList(pager);
	}
	
}
