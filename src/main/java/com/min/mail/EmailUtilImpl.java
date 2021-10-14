package com.min.mail;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service
public class EmailUtilImpl{
	
	
	Random random = new Random(System.currentTimeMillis());
	int result = random.nextInt(999999);
	
	public String result() {
		String RealResult = Integer.toString(result);
		System.out.println("RealResult"+RealResult);
		return RealResult;
	}
	
	public String YN_check() {
		return "false";
	}
	
	public void sendEmail(String email) throws MessagingException {
		
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		prop.put("mail.smtp.starttls.enable", "true");
		
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("dbfla705@gmail.com", "dhfksjfl1324.");
				}
			});
		
		
		try {
			MimeMessage message = new MimeMessage(session);
			
			
			message.setFrom(new InternetAddress("dbfla705@gmail.com")); // 발신자
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email)); // 수신자 메일주소
			System.out.println(email);
			message.setSubject("이메일 인증번호"); // 제목
			
			String htmlStr = "인증번호 : "+ result();
			System.out.println("service단"+result());
			
			/*message.setText(htmlStr, "UTF-8");*/
			message.setContent(htmlStr, "text/html; charset=utf-8");
			Transport.send(message);
			System.out.println("EmailUtilImpl에서 됨");
			
		} catch (AddressException e) {
			e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
		}
	
	}
	
	public void NaversendEmail(String email){
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.naver.com");
		props.put("mail.smtp.port", 465);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.naver.com");
		props.put("mail.smtp.starttls.enable", "true");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("dbfla705@gmail.com", "dhfksjfl1324.");
				}
			});
		
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("dbfla705@gmail.com")); // 발신자
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email)); // 수신자 메일주소
			message.setSubject("이메일 인증번호"); // 제목
			
			String htmlStr = "인증번호 : "+ result();
			System.out.println("service단"+result());
			
			/*message.setText(htmlStr, "UTF-8");*/
			message.setContent(htmlStr, "text/html; charset=utf-8");
			Transport.send(message);
			System.out.println("naver메일 전송 완료");
			
		} catch (AddressException e) {
			e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
		}
	}
	
	public void hanmailsendEmail(String email){
		
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.daum.net");
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("dbfla705@gmail.com", "dhfksjfl1324.");
				}
			});
		
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("dbfla705@gmail.com")); // 발신자
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email)); // 수신자 메일주소
			message.setSubject("이메일 인증번호"); // 제목
			
			String htmlStr = "인증번호 : "+ result();
			System.out.println("service단"+result());
					
			/*message.setText(htmlStr, "UTF-8");*/
			message.setContent(htmlStr, "text/html; charset=utf-8");
			Transport.send(message);
			System.out.println("EmailUtilImpl에서 됨");
			
		} catch (AddressException e) {
			e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
		}
	}
	

}

