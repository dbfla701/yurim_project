package com.min.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.Dto.CommuDto;
import com.min.Dto.MeetDto;
import com.min.Dto.NoticeDto;
import com.min.Dto.UserDto;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ServiceController implements IService{
	
	@Autowired
	private IDao dao;

	@Override
	public boolean joinUser(UserDto dto) {
		log.info("회원가입 {}",dto);
		return dao.joinUser(dto);
	}

	@Override
	public int userCount(UserDto dto) {
		log.info("count {}", dto);
		return dao.userCount(dto);
	}

	@Override
	public UserDto userLogin(UserDto dto) {
		log.info("userLogin {}", dto);
		return dao.userLogin(dto);
	}

	@Override
	public List<NoticeDto> noticeList(int displayPost, int postNum, String row) {
		return dao.noticeList(displayPost, postNum, row);
	}

	@Override
	public int noticeCount() {
		return dao.noticeCount();
	}

	@Override
	public NoticeDto noticeDetail(NoticeDto dto) {
		return dao.noticeDetail(dto);
	}

	@Override
	public boolean noticeWrite(NoticeDto dto) {
		return dao.noticeWrite(dto);
	}

	@Override
	public boolean noticeDelete(NoticeDto dto) {
		return dao.noticeDelete(dto);
	}

	@Override
	public boolean noticeModify(NoticeDto dto) {
		return dao.noticeModify(dto);
	}

	@Override
	public NoticeDto modifySelect(NoticeDto dto) {
		return dao.modifySelect(dto);
	}

	@Override
	public boolean updateView(NoticeDto dto) {
		return dao.updateView(dto);
	}

	@Override
	public List<NoticeDto> search(String title) {
		return dao.search(title);
	}

	@Override
	public boolean commuWrite(CommuDto dto) {
		return dao.commuWrite(dto);
	}

	@Override
	public List<CommuDto> commuSelect(int displayPost, int postNum, String row) {
		return dao.commuSelect(displayPost,postNum,row);
	}

	@Override
	public CommuDto commuDetail(CommuDto dto) {
		return dao.commuDetail(dto);
	}

	@Override
	public boolean updateViewCommu(CommuDto dto) {
		return dao.updateViewCommu(dto);
	}

	@Override
	public List<CommuDto> myWriteList(String id) {
		return dao.myWriteList(id);
	}

	@Override
	public boolean meetingCreate(MeetDto dto) {
		return dao.meetingCreate(dto);
	}

	@Override
	public List<MeetDto> meetingList(int displayPost, int postNum, String row) {
		return dao.meetingList(displayPost, postNum, row);
	}

	@Override
	public MeetDto meetingDetail(MeetDto dto) {
		return dao.meetingDetail(dto);
	}

	@Override
	public boolean updateViewMeeting(MeetDto dto) {
		return dao.updateViewMeeting(dto);
	}

	@Override
	public int commuCount() {
		return dao.commuCount();
	}

	@Override
	public int meetingCount() {
		return dao.meetingCount();
	}

	@Override
	public boolean history(UserDto dto) {
		return dao.history(dto);
	}

	@Override
	public List<UserDto> historySelect() {
		return dao.historySelect();
	}

	@Override
	public List<CommuDto> commuSelect2() {
		return dao.commuSelect2();
	}

	@Override
	public List<NoticeDto> noticeList2() {
		return dao.noticeList2();
	}

	@Override
	public List<MeetDto> meetingList2() {
		return dao.meetingList2();
	}

	@Override
	public List<CommuDto> search2(String title) {
		return dao.search2(title);
	}

	@Override
	public List<UserDto> userList() {
		return dao.userList();
	}

	@Override
	public boolean dropUser(String id) {
		return dao.dropUser(id);
	}

	@Override
	public boolean pwModify(UserDto dto) {
		return dao.pwModify(dto);
	}

	@Override
	public List<MeetDto> myWriteList2(String id) {
		return dao.myWriteList2(id);
	}

	@Override
	public boolean commuDelete(CommuDto dto) {
		return dao.commuDelete(dto);
	}

	@Override
	public boolean commuModify(CommuDto dto) {
		return dao.commuModify(dto);
	}

	@Override
	public CommuDto commu_modifySelect(CommuDto dto) {
		return dao.commu_modifySelect(dto);
	}

}
