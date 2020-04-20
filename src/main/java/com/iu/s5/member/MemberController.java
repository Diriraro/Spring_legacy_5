package com.iu.s5.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s5.member.MemberService;
import com.iu.s5.member.MemberVO;
import com.iu.s5.member.memberPage.Pager;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@ModelAttribute("member")
	public String getBoard() throws Exception{
		return "member";
	}
		
	@RequestMapping(value="memberList", method=RequestMethod.GET)
	public ModelAndView memberList(Pager pager, ModelAndView mv) throws Exception{
		List<MemberVO> ar = memberService.memberList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("member/memberList");
		
		return mv;
	}
	
	
	
}