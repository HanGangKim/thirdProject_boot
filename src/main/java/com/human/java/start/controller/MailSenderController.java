package com.human.java.start.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MailSenderController {
	
	@Autowired
	private JavaMailSender mailSender;
    
	//mailSend 코드
	@RequestMapping("mailSend.do")
	public String mailSend(String name,String last_name,String email,String phone,String message) {
		try {
			// 이미지 
			// 웹 이미지 경로 변수지정
			String img = "<img src=\"https://www.lottehotelmagazine.com/resources/57272281-e0a2-43e5-8f90-b78f5cd6e643_img_art_dstrict_detail01.jpg\">";
			String id="";
			String password="";
			
			
			MimeMessage mimeMessage = mailSender.createMimeMessage();
		    MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
 
		    
		    messageHelper.setFrom("Fiennale@gmail.com"); // 보내는사람 이메일 여기선 google 메일서버 사용하는 아이디를 작성하면됨
		    messageHelper.setTo("hansoo0724@naver.com"); // 받는사람 이메일
		    // 메일제목
		    messageHelper.setSubject("[Fiennale] 피엔날레에서 보내는 메일입니다."); 
		    messageHelper.setText("<HTML><h1>Fiennale</h1></HTML>"
		    + img
		    + " <HTML><h3> " + id + "님의 비밀번호는" + password + "입니다.</h3>"
		    +"<h3>피엔날레를 이용해주셔서 감사합니다. </h3>"+"</HTML>", true); // 메일 내용
		    
		    
		    mailSender.send(mimeMessage);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}
		
		return "redirect:/";
	}

}
