package com.min.model;

import java.util.List;

import com.min.Dto.CommuDto;
import com.min.Dto.MeetDto;
import com.min.Dto.NoticeDto;
import com.min.Dto.UserDto;

public interface IDao {
	
	// 유저 회원가입
	public boolean joinUser(UserDto dto);
	
	// 유저 count
	public int userCount(UserDto dto);
	
	// 유저 로그인
	public UserDto userLogin(UserDto dto);
	
	// 공지사항 리스트
	public List<NoticeDto> noticeList(int displayPost, int postNum, String row);
	
	// 공지사항 갯수
	public int noticeCount();
	
	// 커뮤니티 글 갯수
	public int commuCount();
	
	// 모임 글 갯수
	public int meetingCount();
	
	// 공지사항 상세보기
	public NoticeDto noticeDetail(NoticeDto dto);
	
	// 공지사항 글쓰기
	public boolean noticeWrite(NoticeDto dto);
	
	// 공지사항 삭제
	public boolean noticeDelete(NoticeDto dto);
	
	// 공지사항 글 수정
	public boolean noticeModify(NoticeDto dto);
	
	public NoticeDto modifySelect(NoticeDto dto);
	
	// 조회수 증가
	public boolean updateView(NoticeDto dto);
	
	// 검색 기능
	public List<NoticeDto> search(String title);
	
	// 검색 기능
	public List<CommuDto> search2(String title);
	
	// 커뮤 글 등록
	public boolean commuWrite(CommuDto dto);
	
	// 커뮤 게시판 목록
	public List<CommuDto> commuSelect(int displayPost, int postNum, String row);
	
	// 커뮤 게시판 상세보기
	public CommuDto commuDetail(CommuDto dto); 
	
	// 커뮤 조회수
	public boolean updateViewCommu(CommuDto dto);
	
	// 내가 쓴 글 select
	public List<CommuDto> myWriteList(String id);
	public List<MeetDto> myWriteList2(String id);
	
	// 모임 만들기
	public boolean meetingCreate(MeetDto dto);
	
	// 전체 모임 리스트
	public List<MeetDto> meetingList(int displayPost, int postNum, String row);
	
	// 모임 글 상세보기
	public MeetDto meetingDetail(MeetDto dto);
	
	// 모임 글 조회수
	public boolean updateViewMeeting(MeetDto dto);
	
	// 로그인 기록
	public boolean history(UserDto dto);
	
	// 로그인 기록 리스트
	public List<UserDto> historySelect();
	
	// main 리스트
	public List<CommuDto> commuSelect2();
	public List<NoticeDto> noticeList2();
	public List<MeetDto> meetingList2();
	
	// 유저 리스트
	public List<UserDto> userList();
	
	// 회원 탈퇴
	public boolean dropUser(String id);
	
	// 비번 변경
	public boolean pwModify(UserDto dto);
	
	// 공지사항 삭제
	public boolean commuDelete(CommuDto dto);
		
	// 공지사항 글 수정
	public boolean commuModify(CommuDto dto);
	
	// 커뮤니티 글 수정 폼
	public CommuDto commu_modifySelect(CommuDto dto);
	
}
