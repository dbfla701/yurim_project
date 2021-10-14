
package com.min.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.min.Dto.NoticeDto;
import com.min.Dto.UserDto;
import com.min.model.IService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminController {
	
	@Autowired
	private IService service;

	// 회원 관리
	@RequestMapping(value = "/admin/loginAfter.do", method = RequestMethod.GET)
	public String loginAfter(UserDto dto, Model model) {
		List<UserDto> lists = service.userList();
		model.addAttribute("dto", lists);
		log.info("login");
		return "/admin/loginAfter";
	}

	@RequestMapping(value = "/dropUser.do", method = RequestMethod.POST)
	public String dropUser(String id, Model model) {
		System.out.println(id);
		service.dropUser(id);
		log.info("dropUser");
		model.addAttribute("msg", "탈퇴 되었습니다");
		model.addAttribute("url", "/admin/loginAfter.do");
		return "redirect";
	}
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout() {
		log.info("login");
		return "logout";
	}
	
	@RequestMapping(value = "/writing.do", method = RequestMethod.POST)
	public String writing(Model model, NoticeDto dto) {
		service.noticeWrite(dto);
		System.out.println(dto);
		model.addAttribute("msg", "글이 등록되었습니다.");
		model.addAttribute("url", "/noticeList.do");
		return "redirect";
	}

	@RequestMapping(value = "/admin/noticeWrite.do", method = RequestMethod.GET)
	public String noticeWrite() {
		return "/admin/noticeWrite";
	}
	
	@RequestMapping(value = "/noticeDelete.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String noticeDelete(Model model, NoticeDto dto) {
		service.noticeDelete(dto);
		System.out.println("title="+dto);
		model.addAttribute("msg", "글이 삭제되었습니다.");
		model.addAttribute("url", "/noticeList.do?num=1&row=regdate");
		return "redirect";
	}
	
	// 공지사항 글 수정
	@RequestMapping(value = "/modify.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String modify(Model model, NoticeDto dto, int seq) {
		dto.setSeq(seq);
		System.out.println(seq);
		service.noticeModify(dto);
		model.addAttribute("msg", "글이 수정되었습니다.");
		model.addAttribute("url", "/noticeList.do?num=1&row=regdate");
		return "redirect";
	}
	
	// 공지사항 글 수정 폼
	@RequestMapping(value = "/noticeModify.do", method = RequestMethod.GET)
	public String noticeModify(NoticeDto dto, Model model) {
		NoticeDto lists = service.modifySelect(dto);
		model.addAttribute("dto", lists);
		return "/noticeModify";
	}
	
	// 로그인 기록
	@RequestMapping(value = "/admin/history.do", method = RequestMethod.GET)
	public String history(NoticeDto dto, Model model) {
		List<UserDto> lists = service.historySelect();
		model.addAttribute("dto", lists);
		return "/admin/history";
	}
	
}
