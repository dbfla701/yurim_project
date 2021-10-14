package com.min.controller;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.min.mail.EmailUtilImpl;

@Controller
public class MailController {
	
	@Autowired
	private EmailUtilImpl mailService;
	
	@ResponseBody
	@RequestMapping(value="/emailCheck.do", method = RequestMethod.POST)
	public boolean emailCheck(@RequestParam String email, @RequestParam String email2)
			throws MessagingException {
		
		System.out.println("전체 이메일"+email+"이메일"+email2);
		
		
		if(email2.equals("naver.com")){
			mailService.NaversendEmail(email);
			System.out.println("네이버 메일 전송 완료");
		}else if(email2.equals("gmail.com")){
			mailService.sendEmail(email);
			System.out.println("구글 메일 전송 완료");
		}else if(email2.equals("hanmail.net")){
			mailService.hanmailsendEmail(email);
			System.out.println("다음 메일 전송 완료");
		}
		
		System.out.println("메일 전송 완료");

		return true;
	}
	
	  @ResponseBody
	  @RequestMapping(value="/emailCheckAfter.do", method = RequestMethod.POST)
	  public String emailCheckAfter(@RequestParam String inputCode, @RequestParam String email,
			  Model model, HttpSession session) throws MessagingException {
		  String chNum = mailService.result();
		  String YN = mailService.YN_check();
		  
		  System.out.println("chNum"+chNum);
		  System.out.println("inputCode"+inputCode);
		  if(inputCode.equals(chNum)){
			  System.out.println("인증됨");
			  model.addAttribute("msg", "인증 되었습니다");
			  session.setAttribute(YN, "true");
			  return "redirect";
		  }else {
			  System.out.println("인증실패");
			  model.addAttribute("msg", "인증 실패했습니다");
			  session.setAttribute(YN, "false");
		  }
		  return "redirect";
	  }
	 
}
