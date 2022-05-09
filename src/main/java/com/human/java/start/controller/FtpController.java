package com.human.java.start.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.SftpException;
import com.jcraft.jsch.Channel;

@Controller
@RequestMapping("/upload/")
public class FtpController {
  
   protected static String FTP_IP   = "210.114.6.197";   // FTP 접속지 IP ( 주소대신 IP 설정 )
   protected static int    FTP_PORT = 22;                // FTP 접속지 Port
   protected static String FTP_ID   = "xdo19";           // ID
   protected static String FTP_PWD  = "rnjsalstjd9656!"; // PASSWORD
   protected static String FTP_PATH = "";
   ChannelSftp chSftp               = null;
   
   
   // FTP 연결 컨트롤러 
   @RequestMapping(value = "connectFtp.do", method=RequestMethod.GET)
   public String connectFtp() {
     
      // FTP 관련 객체 선언
      Session ses = null;             // 접속계정
      Channel ch  = null;// 접속
      JSch jsch   = new JSch();       // jsch 객체를 생성
     
      try {
    	  
         // [1] 세션 객체를 생성(사용자 이름, 접속할 호스트, 포트)
         ses = jsch.getSession(FTP_ID, FTP_IP, FTP_PORT);
         // 비밀번호 설정
         ses.setPassword(FTP_PWD);
         
         // [2] 세션과 관련된 정보를 설정
         Properties p = new Properties();
         // 호스트 정보를 검사하지 않음
         p.put("StrictHostKeyChecking", "no");
         ses.setConfig(p);
         System.out.println("연결중");
         
         // [3] 접속
         ses.connect();        
         // 채널을 오픈(sftp)
         ch = ses.openChannel("sftp");
         // 채널에 연결(sftp)        
         ch.connect();        
         // 채널을 FTP용 채널 객체로 개스팅
         chSftp = (ChannelSftp)ch;     
         System.out.println("FTP 연결이 되었습니다.");
         
      } catch(Exception e) {
         e.printStackTrace();
         System.out.println("FTP 연결에 실패했습니다.");
         return "/upload/ConError";
         
      }
      
      // 연결성공 -> 연결종료
      try {
          chSftp.quit();  // Sftp 연결 종료
          System.out.println("FTP 연결을 종료합니다.");
       } catch(Exception e) { 
          System.err.println(e.getMessage());
       }
      
      // 연결에 성공할 경우 해당 페이지로 이동
      return "/upload/ConSucess";
   }
 
   
  
   // FTP 연결&업로드 컨트롤러 
   @RequestMapping(value = "uploadConnectionFtp.do")
   public String uploadConnectionFtp() throws FileNotFoundException {
	   	  
	      Session ses = null;             
	      Channel ch  = null;// 접속
	      JSch jsch   = new JSch(); 
	      
	      
	      String filePath = "D:/아이즈원.jpg";       // 사진 임의 지정 업로드
	      File fileImsi= new File(filePath);       // file 객체 생성 (파일 경로 입력)
	      FileInputStream in  =new FileInputStream(fileImsi);
	     
	      // [1] 연결시작
	      try {
	          ses = jsch.getSession(FTP_ID, FTP_IP, FTP_PORT);
	          ses.setPassword(FTP_PWD);
	          Properties p = new Properties();
	          p.put("StrictHostKeyChecking", "no");
	          ses.setConfig(p);
	          System.out.println("연결중");
	          ses.connect();        
	          ch = ses.openChannel("sftp");
	          ch.connect();        
	          chSftp = (ChannelSftp)ch;     
	          System.out.println("FTP 연결이 되었습니다.");
	          
	          // ---------------------------------------------- 
	          
	          // [2] 업로드 시작 
	          try {
	    	        //  파일 전송
	        	  	//  chSftp.cd("/xdo19");                // 서버의 경로 (루트경로 임시저장)
	        	  	//	/xdo19/tomcat/webapps/ROOT/WEB-INF/classes/resources/img/exhibition_imgs
	        	  chSftp.cd("/xdo19/tomcat/webapps/ROOT/WEB-INF/classes/resources/img/exhibition_imgs"); 
	        	   chSftp.put(in ,fileImsi.getName());   // 서버에 파일 보내기
	       	  
	          } catch (Exception e) {
				// [2] 업로드 실패시
	        	  e.printStackTrace();
		          System.out.println("FTP 업로드에 실패했습니다.");
	        	  return "/upload/ConError";
	          }
	          
	       } catch(Exception e) {
	     	  // [1] 연결 실패시 
	          e.printStackTrace();
	          System.out.println("FTP 연결에 실패했습니다.");
	          return "/upload/ConError";
	       }
	       
	      // ---------------------------------------------- 
	      
	       //[3] 연결성공 -> 연결종료
	       try {
	           chSftp.quit();  // Sftp 연결 종료
	           System.out.println("FTP 연결을 종료합니다.");
	        } catch(Exception e) { 
	           System.err.println(e.getMessage());
	        }
	   return "/upload/ConSucess";
   }
   
   
  
   
//   @RequestMapping(value = "uploadFtp", method=RequestMethod.GET)
//   public String uploadFtp() {
//     
//      String filePath = "D:/SFTP.txt";     // 나중에 DB에서 필요한 경로 당기면 good
//      
//      File file= new File(filePath);       // file 객체 생성 (파일 경로 입력)
//      try {
//         fi = new FileInputStream(file);
//         chSftp.cd("/");                   // 서버의 경로
//         chSftp.put(fi, file.getName());   // 서버에 파일 보내기
//      } catch(SftpException e) { 
//         e.printStackTrace();
//      } catch(FileNotFoundException e) {
//         e.printStackTrace();
//      } finally {
//         try {
//            fi.close();
//         } catch (IOException e) {
//            e.printStackTrace();
//         }
//      }
//      return "redirect:/upload/uploadForm";
//   }  
// FTP 접속 종료
// @RequestMapping(value = "/upload/disconnectFtp", method=RequestMethod.GET)
//public String disconnectFtp() {
//try {
//  chSftp.quit();                            // Sftp 연결 종료
//  System.out.println("FTP 연결을 종료합니다.");
//} catch(Exception e) { 
//  System.err.println(e.getMessage());
//}
//return "redirect:/upload/uploadForm";
//}
   
   
}
