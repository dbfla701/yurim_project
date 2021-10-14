package com.min.model;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.Dto.CommuDto;
import com.min.Dto.MeetDto;
import com.min.Dto.NoticeDto;
import com.min.Dto.UserDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class Dao implements IDao{
	
	private final String NS = "sqlmap.example.BoardMapper.";
	
	@Autowired
	  private SqlSessionTemplate session;

	// 회원가입
	@Override
	public boolean joinUser(UserDto dto) {
		log.info("joinUser {}",dto);
		int n = session.insert(NS+"joinUser", dto);
		return (n > 0) ? true : false;
	}

	// 유저 카운트
	@Override
	public int userCount(UserDto dto) {
		return session.selectOne(NS+"userCount", dto);
	}

	@Override
	public UserDto userLogin(UserDto dto) {
		return session.selectOne(NS+"userLogin", dto);
	}

	@Override
	public List<NoticeDto> noticeList(int displayPost, int postNum, String row) {
		
		HashMap<String, Object> data = new HashMap<>();

		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		data.put("row", row);
		return session.selectList(NS+"noticeList",data);
	}

	@Override
	public int noticeCount() {
		return session.selectOne(NS+"noticeCount");
	}

	@Override
	public NoticeDto noticeDetail(NoticeDto dto) {
		return session.selectOne(NS+"noticeDetail", dto);
	}

	@Override
	public boolean noticeWrite(NoticeDto dto) {
		int n = session.insert(NS+"noticeWrite", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public boolean noticeDelete(NoticeDto dto) {
		int n = session.delete(NS+"noticeDelete", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public boolean noticeModify(NoticeDto dto) {
		int n = session.update(NS+"noticeModify", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public NoticeDto modifySelect(NoticeDto dto) {
		return session.selectOne(NS+"modifySelect", dto);
	}

	@Override
	public boolean updateView(NoticeDto dto) {
		int n = session.update(NS+"updateView", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public List<NoticeDto> search(String title) {
		return session.selectList(NS+"search", title);
	}

	@Override
	public boolean commuWrite(CommuDto dto) {
		int n = session.update(NS+"commuWrite", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public List<CommuDto> commuSelect(int displayPost, int postNum, String row) {
		HashMap<String, Object> data = new HashMap<>();
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		data.put("row", row);
		return session.selectList(NS+"commuSelect",data);
	}

	@Override
	public CommuDto commuDetail(CommuDto dto) {
		return session.selectOne(NS+"commuDetail", dto);
	}

	@Override
	public boolean updateViewCommu(CommuDto dto) {
		int n = session.update(NS+"updateViewCommu", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public List<CommuDto> myWriteList(String id) {
		return session.selectList(NS+"myWriteList", id);
	}

	@Override
	public boolean meetingCreate(MeetDto dto) {
		int n = session.update(NS+"meetingCreate", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public List<MeetDto> meetingList(int displayPost, int postNum, String row) {
		HashMap<String, Object> data = new HashMap<>();
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		data.put("row", row);
		return session.selectList(NS+"meetingList",data);
	}

	@Override
	public MeetDto meetingDetail(MeetDto dto) {
		return session.selectOne(NS+"meetingDetail", dto);
	}

	@Override
	public boolean updateViewMeeting(MeetDto dto) {
		int n = session.update(NS+"updateViewMeeting", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public int commuCount() {
		return session.selectOne(NS+"commuCount");
	}

	@Override
	public int meetingCount() {
		return session.selectOne(NS+"meetingCount");
	}

	@Override
	public boolean history(UserDto dto) {
		int n = session.update(NS+"history", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public List<UserDto> historySelect() {
		return session.selectList(NS+"historySelect");
	}

	@Override
	public List<CommuDto> commuSelect2() {
		return session.selectList(NS+"commuSelect2");
	}

	@Override
	public List<NoticeDto> noticeList2() {
		return session.selectList(NS+"noticeList2");
	}

	@Override
	public List<MeetDto> meetingList2() {
		return session.selectList(NS+"meetingList2");
	}

	@Override
	public List<CommuDto> search2(String title) {
		return session.selectList(NS+"search2", title);
	}

	@Override
	public List<UserDto> userList() {
		return session.selectList(NS+"userList");
	}

	@Override
	public boolean dropUser(String id) {
		int n = session.delete(NS+"dropUser", id);
		return (n > 0) ? true : false;
	}

	@Override
	public boolean pwModify(UserDto dto) {
		int n = session.update(NS+"pwModify", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public List<MeetDto> myWriteList2(String id) {
		return session.selectList(NS+"myWriteList2", id);
	}

	@Override
	public boolean commuDelete(CommuDto dto) {
		int n = session.delete(NS+"commuDelete", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public boolean commuModify(CommuDto dto) {
		int n = session.update(NS+"commuModify", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public CommuDto commu_modifySelect(CommuDto dto) {
		return session.selectOne(NS+"commu_modifySelect", dto);
	}

}
