package com.min.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.min.Dto.NoticeDto;
import com.min.model.IService;

@Controller
public class NoticeController {

	@Autowired
	private IService service;

	@RequestMapping(value = "/searchList.do", method = RequestMethod.GET)
	public String search(String title, Model model) {
		List<NoticeDto> lists = service.search(title);
		model.addAttribute("dto", lists);
		System.out.println("검색 = " + title);
		return "/searchList.do";
	}

	// 공지사항 목록
	@RequestMapping(value = "/noticeList.do", method = RequestMethod.GET)
	public String noticeList(NoticeDto dto, Model model, @RequestParam("num") int number,
			@RequestParam("row") String row) {

		// 게시물 총 갯수
		int count = service.noticeCount();

		// 한 페이지에 출력할 게시물 갯수
		int postNum = 10;

		// 하단 페이징 갯수 ( '게시물 총갯수 / 한페이지에 출력할 갯수' 의 올림) // 나머지 페이지들도 보여야하니까
		int pageNum = (int) Math.ceil((double) count / postNum);

		// 페이지에서 첫번째 게시글의 번호
		int displayPost = (number - 1) * postNum;

		// 하단에 한페이지에 보여지는 페이지의 갯수
		int pageNum_cnt = 5;

		// 표시되는 하단 페이지 번호 중 마지막 번호
		int endPageNum = (int) (Math.ceil((double) number / (double) pageNum_cnt) * pageNum_cnt);

		// 표시되는 페이지 번호 중 첫번째 번호
		int startPageNum = endPageNum - (pageNum_cnt - 1);

		// 마지막 번호 재계산
		int endPageNum_tmp = (int) (Math.ceil((Math.ceil((double) count / (double) pageNum_cnt)) / 2));

		if (endPageNum > endPageNum_tmp) { // 빈페이지가 없게 하려고
			endPageNum = endPageNum_tmp;
		}

		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;

		// 이전 링크는 시작페이지번호가 1일때를 제외하곤 무조건 출력 되어야 함
		// 시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);

		// 이전 및 다음
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);

		// 현재 페이지
		model.addAttribute("select", number);

		List<NoticeDto> lists = service.noticeList(displayPost, postNum, row);
		model.addAttribute("number", number);
		model.addAttribute("row", row);
		model.addAttribute("pageNum", pageNum); // 페이지 총 갯수
		System.out.println(lists);
		model.addAttribute("dto", lists);
		return "noticeList";
	}

	// 공지사항 상세보기
	@RequestMapping(value = "/noticeDetail.do", method = RequestMethod.GET)
	public String noticeDetail(NoticeDto dto, Model model) {

		NoticeDto lists = service.noticeDetail(dto);
		model.addAttribute("dto", lists);
		service.updateView(dto);
		return "noticeDetail";
	}

}
