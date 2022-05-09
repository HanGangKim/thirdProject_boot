package com.human.java.domain;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;
import java.util.Properties;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;

//import java.sql.Date;

public class ExhibitionVO {

	// FTP 통신 변수
	protected static String FTP_IP = "210.114.6.197"; // FTP 접속지 IP ( 주소대신 IP 설정 )
	protected static int FTP_PORT = 22; // FTP 접속지 Port
	protected static String FTP_ID = "xdo19"; // ID
	protected static String FTP_PWD = "rnjsalstjd9656!"; // PASSWORD
	protected static String FTP_PATH = "";
	ChannelSftp chSftp = null;

	private int exhibition_id;
	private String exhibition_title;
	private String exhibition_contents;
	private String exhibition_start_date;
	private String exhibition_end_date;
	private String exhibition_total_date;
	private String exhibition_image;
	private String exhibition_location;
	private int exhibition_price;
	private String t_file_name;
	private String t_file_name_en;
	private long t_file_size;
	public boolean t_fileExtension;
	private String exhibition_memo;
    private String ticketing_month;

	// 전시회 등록시 필요한 회사의 ID
	private String company_id;

	// 전시회 등록 승인 여부
	private String exhibition_flag;

	// 이미지 등록
	MultipartFile file;
	MultipartFile file_sub;
	
	private String ticketing_flag;
	
	
	
	public String getTicketing_month() {
		return ticketing_month;
	}

	public void setTicketing_month(String ticketing_month) {
		this.ticketing_month = ticketing_month;
	}

	public String getTicketing_flag() {
		return ticketing_flag;
	}

	public void setTicketing_flag(String ticketing_flag) {
		this.ticketing_flag = ticketing_flag;
	}

	public String getExhibition_memo() {
		return exhibition_memo;
	}

	public void setExhibition_memo(String exhibition_memo) {
		this.exhibition_memo = exhibition_memo;
	}

	public MultipartFile getFile_sub() {
		return file_sub;
	}

	public MultipartFile getFile() {
		return file;
	}

	public String getExhibition_flag() {
		return exhibition_flag;
	}

	public void setExhibition_flag(String exhibition_flag) {
		this.exhibition_flag = exhibition_flag;
	}

	public String getExhibition_contents() {
		return exhibition_contents;
	}

	public void setExhibition_contents(String exhibition_contents) {
		this.exhibition_contents = exhibition_contents;
	}

	public String getCompany_id() {
		return company_id;
	}

	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}

	public int getExhibition_id() {
		return exhibition_id;
	}

	public void setExhibition_id(int exhibition_id) {
		this.exhibition_id = exhibition_id;
	}

	public String getExhibition_title() {
		return exhibition_title;
	}

	public void setExhibition_title(String exhibition_title) {
		this.exhibition_title = exhibition_title;
	}

	public String getExhibition_start_date() {
		return exhibition_start_date;
	}

	public void setExhibition_start_date(String exhibition_start_date) {
		exhibition_start_date = exhibition_start_date.replace("-", ".");
		this.exhibition_start_date = exhibition_start_date;
	}

	public String getExhibition_end_date() {
		return exhibition_end_date;
	}

	public void setExhibition_end_date(String exhibition_end_date) {
		exhibition_end_date = exhibition_end_date.replace("-", ".");
		this.exhibition_end_date = exhibition_end_date;
	}

	public String getExhibition_total_date() {
		return exhibition_total_date;
	}

	public void setExhibition_total_date(String exhibition_total_date) {
		this.exhibition_total_date = exhibition_total_date;
	}

	public String getExhibition_image() {
		return exhibition_image;
	}

	public void setExhibition_image(String exhibition_image) {
		this.exhibition_image = exhibition_image;
	}

	public String getExhibition_location() {
		return exhibition_location;
	}

	public void setExhibition_location(String exhibition_location) {
		this.exhibition_location = exhibition_location;
	}

	public int getExhibition_price() {
		return exhibition_price;
	}

	public void setExhibition_price(int exhibition_price) {
		this.exhibition_price = exhibition_price;
	}

	// 메인 이미지 업로드
	public void setFile(MultipartFile file) {
		Session ses = null;
		Channel ch = null;
		JSch jsch = new JSch();
		String deleteFileName = null;

		try {
			// [1] FTP 연결
			ses = jsch.getSession(FTP_ID, FTP_IP, FTP_PORT);
			ses.setPassword(FTP_PWD);
			Properties p = new Properties();
			p.put("StrictHostKeyChecking", "no");
			ses.setConfig(p);
			ses.connect();
			ch = ses.openChannel("sftp");
			ch.connect();
			chSftp = (ChannelSftp) ch;
			System.out.println("FTP 연결이 되었습니다.");

		} catch (Exception e) {
			// [1] FTP 연결 실패시
			e.printStackTrace();
			System.out.println("FTP 연결에 실패했습니다.");

		}

		this.file = file;
		// 업로드 파일 접근
		if (!file.isEmpty()) {
			this.t_file_name = file.getOriginalFilename();
			this.t_file_size = file.getSize();

			String fileExtension = t_file_name.substring(t_file_name.lastIndexOf("."));

			if (!(fileExtension.equals(".jpg") || fileExtension.equals(".jpeg") || fileExtension.equals(".png"))) {
				t_fileExtension = true;
				return;
			}

			this.t_file_name_en = UUID.randomUUID().toString().replaceAll("-", "") + fileExtension;
			deleteFileName = this.t_file_name_en;

			File f = new File("D:\\STS\\thirdProject_boot\\src\\main\\resources\\resources\\img\\exhibition_imgs\\"
					+ t_file_name_en);

			try {
				// [3-1] resources 정적파일 업로드
				file.transferTo(f);

				try {
					// [3-2] 업로드 한 파일 FTP 통신 -> 서버 저장
					String f_location = "D:/STS/thirdProject_boot/src/main/resources/resources/img/exhibition_imgs/"
							+ t_file_name_en;
					File ftpFile = new File(f_location); // file 객체 생성 (파일 경로 입력)
					FileInputStream ftpSubmit = new FileInputStream(ftpFile);
					chSftp.cd("/xdo19/tomcat/webapps/ROOT/WEB-INF/classes/resources/img/exhibition_imgs");
					chSftp.put(ftpSubmit, ftpFile.getName()); // 서버에 파일 보내기

				} catch (Exception e) {
					System.out.println("전송실패:" + e);
				}

				// [3-3] 저장한 서버 파일 경로저장
				setExhibition_image("http://xdo19.cafe24.com/resources/img/exhibition_imgs/" + t_file_name_en);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			// [4] 연결성공 -> 연결종료
			try {
				chSftp.quit(); // Sftp 연결 종료
				System.out.println("FTP 연결을 종료합니다.");
			} catch (Exception e) {
				System.err.println(e.getMessage());
			}
		}
	}

	// -------------------------------------------------------------------------------------------------------------------

	// 부가 이미지 업로드
	public void setFile_sub(MultipartFile file) {

		Session ses = null;
		Channel ch = null;
		JSch jsch = new JSch();

		String deleteFileName = null;

		try {
			// [1] FTP 연결
			ses = jsch.getSession(FTP_ID, FTP_IP, FTP_PORT);
			ses.setPassword(FTP_PWD);
			Properties p = new Properties();
			p.put("StrictHostKeyChecking", "no");
			ses.setConfig(p);
			ses.connect();
			ch = ses.openChannel("sftp");
			ch.connect();
			chSftp = (ChannelSftp) ch;
			System.out.println("FTP 연결이 되었습니다.");

		} catch (Exception e) {
			// [1] FTP 연결 실패시
			e.printStackTrace();
			System.out.println("FTP 연결에 실패했습니다.");

		}

		this.file = file;
		// 업로드 파일 접근
		if (!file.isEmpty()) {
			this.t_file_name = file.getOriginalFilename();
			this.t_file_size = file.getSize();

			String fileExtension = t_file_name.substring(t_file_name.lastIndexOf("."));

			if (!(fileExtension.equals(".jpg") || fileExtension.equals(".jpeg") || fileExtension.equals(".png"))) {
				t_fileExtension = true;
				return;
			}

			this.t_file_name_en = UUID.randomUUID().toString().replaceAll("-", "") + fileExtension;

			deleteFileName = this.t_file_name_en;

			File f = new File("D:\\STS\\thirdProject_boot\\src\\main\\resources\\resources\\img\\exhibition_sub\\"
					+ t_file_name_en);
			try {
				// [3-1] resources 정적파일 업로드
				file.transferTo(f);

				try {
					// [3-2] 업로드 한 파일 FTP 통신 -> 서버 저장
					String f_location = "D:/STS/thirdProject_boot/src/main/resources/resources/img/exhibition_sub/"
							+ t_file_name_en;
					File ftpFile = new File(f_location); // file 객체 생성 (파일 경로 입력)
					FileInputStream ftpSubmit = new FileInputStream(ftpFile);
					chSftp.cd("/xdo19/tomcat/webapps/ROOT/WEB-INF/classes/resources/img/exhibition_sub");
					chSftp.put(ftpSubmit, ftpFile.getName()); // 서버에 파일 보내기

				} catch (Exception e) {
					System.out.println("전송실패:" + e);
				}

				// [3-3] 저장한 서버 파일 경로저장
				setExhibition_contents("http://xdo19.cafe24.com/resources/img/exhibition_sub/" + t_file_name_en);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}

			// [4] 연결성공 -> 연결종료
			try {
				chSftp.quit(); // Sftp 연결 종료
				System.out.println("FTP 연결을 종료합니다.");
			} catch (Exception e) {
				System.err.println(e.getMessage());
			}

		}
	}
}
