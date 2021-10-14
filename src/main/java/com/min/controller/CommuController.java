package com.min.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.min.Dto.CommuDto;
import com.min.Dto.MeetDto;
import com.min.Dto.NoticeDto;
import com.min.Dto.UserDto;
import com.min.model.IService;

@Controller
public class CommuController {

	@Autowired
	private IService service;
	
	@RequestMapping(value = "/searchList2.do", method = RequestMethod.GET)
	public String search(String title, Model model) {
		List<CommuDto> lists = service.search2(title);
		model.addAttribute("dto", lists);
		System.out.println("검색 = " + title);
		return "searchList2";
	}

	@RequestMapping(value = "/community.do", method = RequestMethod.GET)
	public String community(CommuDto dto, Model model,
			@RequestParam("num") int number, @RequestParam("row") String row) {

		// 게시물 총 갯수
		int count = service.commuCount();

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
		List<CommuDto> lists = service.commuSelect(displayPost, postNum, row);
		model.addAttribute("number", number);
		model.addAttribute("row", row);
		model.addAttribute("pageNum", pageNum); // 페이지 총 갯수
		model.addAttribute("dto", lists);
		return "community";
	}

	@RequestMapping(value = "/commuDetail.do", method = RequestMethod.GET)
	public String commuDetail(CommuDto dto, Model model) {

		CommuDto lists = service.commuDetail(dto);
		model.addAttribute("dto", lists);
		service.updateViewCommu(dto);
		System.out.println(lists);
		return "commuDetail";
	}

	@RequestMapping(value = "/commuWrite.do", method = RequestMethod.GET)
	public String commuWrite(CommuDto dto, Model model) {
		return "commuWrite";
	}

	@RequestMapping(value = "/commuwriting.do", method = RequestMethod.POST)
	public String writing(CommuDto dto, Model model) {
		service.commuWrite(dto);
		model.addAttribute("msg", "글이 등록되었습니다.");
		model.addAttribute("url", "/community.do?num=1&row=regdate");
		return "redirect";
	}

	@RequestMapping(value = "/myWriteList.do", method = RequestMethod.GET)
	public String myWriteList(HttpSession session, Model model, UserDto dto, MeetDto dto2) {

		UserDto id = (UserDto) session.getAttribute("user");

		List<CommuDto> lists = service.myWriteList(id.getId());
		model.addAttribute("dto", lists);
		
		List<MeetDto> lists2 = service.myWriteList2(id.getId());
		model.addAttribute("dto2", lists2);

		return "myWriteList";
	}

	@RequestMapping(value = "/myWriteDetail.do", method = RequestMethod.GET)
	public String myWriteDetail(CommuDto dto, Model model) {

		CommuDto lists = service.commuDetail(dto);
		model.addAttribute("dto", lists);
		service.updateViewCommu(dto);
		System.out.println(lists);
		return "myWriteDetail";
	}

	@RequestMapping(value = "/userWriteList.do", method = RequestMethod.GET)
	public String userWriteList(Model model, String id, HttpSession session) {

		List<CommuDto> lists = service.myWriteList(id);
		model.addAttribute("dto", lists);
		model.addAttribute("id", id);
		System.out.println(lists);
		return "userWriteList";
	}
	
	@RequestMapping(value = "/commuDelete.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String noticeDelete(Model model, CommuDto dto) {
		service.commuDelete(dto);
		System.out.println("title="+dto);
		model.addAttribute("msg", "글이 삭제되었습니다.");
		model.addAttribute("url", "/community.do?num=1&row=regdate");
		return "redirect";
	}
	
	// 커뮤니티 글 수정
	@RequestMapping(value = "/modifyPost.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String modify(Model model, CommuDto dto, int seq) {
		dto.setSeq(seq);
		System.out.println(seq);
		service.commuModify(dto);
		model.addAttribute("msg", "글이 수정되었습니다.");
		model.addAttribute("url", "/community.do?num=1&row=regdate");
		return "redirect";
	}
	
	// 커뮤니티 글 수정 폼
	@RequestMapping(value = "/commuModify.do", method = RequestMethod.GET)
	public String noticeModify(CommuDto dto, Model model) {
		CommuDto lists = service.commu_modifySelect(dto);
		model.addAttribute("dto", lists);
		return "/commuModify";
	}

}
