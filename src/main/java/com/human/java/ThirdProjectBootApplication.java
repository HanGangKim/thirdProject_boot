package com.human.java;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.activation.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@EnableScheduling
@RestController
@SpringBootApplication
public class ThirdProjectBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(ThirdProjectBootApplication.class, args);
	}

	// SQL 연결
	@Bean
	public SqlSessionFactory sqlSessionFactory(javax.sql.DataSource dataSource) throws Exception {
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		sessionFactory.setDataSource(dataSource);

		Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath:mybatis/mapper/*.xml");
		sessionFactory.setMapperLocations(res);

		return sessionFactory.getObject();
	}

	// 스케줄러 - 자동삭제
	@Scheduled(cron = "0/5 * * * * *") // 5초 간격으로 파일을 삭제 
	public void scheduleTaskUsingCronExpression() {
		// [1] 경로 변수화 & 파일 객체 생성
		String path_exhibition_imgs = "D:\\STS\\thirdProject_boot\\src\\main\\resources\\resources\\img\\exhibition_imgs";
		File deleteFolder_first = new File(path_exhibition_imgs);
		String path_exhibition_sub = "D:\\STS\\thirdProject_boot\\src\\main\\resources\\resources\\img\\exhibition_sub";
		File deleteFolder_second = new File(path_exhibition_sub);
		
		// [2] 해당 경로의 파일을 배열화
		File[] deleteFolderList_first = deleteFolder_first.listFiles();
		File[] deleteFolderList_second = deleteFolder_second.listFiles();
		
		// [3] 해당 배열만큼 반복문 실행 / 파일 삭제
		try {
			for (int i = 0; i < deleteFolderList_first.length; i++) {
				deleteFolderList_first[i].delete();
			}
			
			for (int i = 0; i < deleteFolderList_second.length; i++) {
				deleteFolderList_second[i].delete();
			}
		} catch (Exception e) {
			System.err.println(e);
		}
				
	}

}
