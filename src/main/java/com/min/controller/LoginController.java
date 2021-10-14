package com.min.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.min.Dto.CommuDto;
import com.min.Dto.MeetDto;
import com.min.Dto.NoticeDto;
import com.min.Dto.UserDto;
import com.min.history.ClientUtils;
import com.min.mail.EmailUtilImpl;
import com.min.model.IService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class LoginController {

	@Autowired
	private IService service;

	@Autowired
	private EmailUtilImpl mailService;

	/*
	 * @Autowired private EmailUtilImpl mailservice;
	 */

	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main(CommuDto dto, Model model, NoticeDto dto2, MeetDto dto3) {
		
		
		  List<CommuDto> lists = service.commuSelect2();
		  model.addAttribute("dto", lists);
		
		  List<NoticeDto> lists2 = service.noticeList2(); model.addAttribute("dto2",
		  lists2);
		
		  List<MeetDto> list33 = service.meetingList2();
		  model.addAttribute("dto3", list33);
		 

		return "main";
	}

	@RequestMapping(value = "/joinUser.do", method = RequestMethod.GET)
	public String joinUser(UserDto dto, Model model) {
		System.out.println("joinUser");
		return "joinUser";
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String join(UserDto dto, Model model) {
		service.joinUser(dto);
		System.out.println(dto);
		System.out.println("회원가입 성공");
		model.addAttribute("msg", "회원가입 되었습니다");
		model.addAttribute("url", "login.do");
		return "redirect";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		log.info("login");
		return "login";
	}

	@RequestMapping(value = "/logining.do", method = RequestMethod.POST)
	public String logining(UserDto dto, HttpSession session, Model model, HttpServletRequest request) {

		int n = service.userCount(dto);
		System.out.println("count=" + n);

		if (n == 1) {
			UserDto user = service.userLogin(dto);
			session.setAttribute("user", user);
			System.out.println("로그인 성공 id=" + user.getId());
			System.out.println("로그인 성공 id=" + user.getAuth());

			if (user.getAuth() == "ROLE_USER") {
				String ip = ClientUtils.getRemoteIP(request); // IPv4
				dto.setIp(ip);
				dto.setId(user.getId());
				service.history(dto); // insert
			}

		} else {
			System.out.println("로그인 실패");
			model.addAttribute("msg", "로그인에 실패하였습니다.");
			model.addAttribute("url", "main.do");
			return "redirect";
		}

		return "redirect:/main.do";
	}
	
	@RequestMapping(value = "/pwModify.do", method = RequestMethod.GET)
	public String pwModify() {
		return "pwModify";
	}

	@RequestMapping(value = "/pwModifyPost.do", method = RequestMethod.POST)
	public String pwModify(Model model, UserDto dto, String newpw, HttpSession session) {
		
		UserDto id = (UserDto) session.getAttribute("user");
		System.out.println(newpw+"###"+id.getId());
		dto.setPw(newpw);
		dto.setId(id.getId());
		service.pwModify(dto);
		model.addAttribute("msg", "비밀번호가 변경되었습니다");
		model.addAttribute("url", "logout.do");
		return "redirect";
	}
	
}
