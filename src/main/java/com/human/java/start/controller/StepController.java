package com.human.java.start.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
* Step*Controller : 단순 이동 컨트롤러 ( 폴더간 단순 이동 포함 )  
* @author : 김한수  
* @return : /Customer/landing/*.jsp (Customer 폴더)
* @return : /Exhibition/*.jsp (Exhibition 폴더)
* @return : /Company/*.jsp (Company 폴더)
* @return : /Master/*.jsp (Master 폴더)
* @return : *.jsp (폴더내 이동)
* @param : 따로 없음 
* @throws : 따로 없음 
* @exception : 따로 없음 
**/

@Controller
public class StepController {
	// 폴더간 이동 컨트롤러
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println("단순이동 step:"+step);
		return step;
	}
}

@Controller
@RequestMapping("/landing/")
class StepLandingController {
	// LandingPage 단순이동 컨트롤러
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println("단순이동 step:"+step);
		return "/LandingPage/"+step;
	}
}

@Controller
@RequestMapping("/customer/")
class StepCustomerController {
	// Customer 단순이동 컨트롤러
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println("단순이동 step:"+step);
		return "/Customer/"+step;
	}
}

@Controller
@RequestMapping("/exhibition/")
class StepCompanyController {
	// Exhibition 단순이동 컨트롤러
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println("단순이동 step:"+step);
		return "/Exhibition/"+step;
	}
}

@Controller
@RequestMapping("/company/")
class StepExhibitionController {
	// Company 단순이동 컨트롤러
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println("단순이동 step:"+step);
		return "/Company/"+step;
	}	
}


@Controller
@RequestMapping("/master/")
class StepMasterController {
	// Master 단순이동 컨트롤러
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println("단순이동 step:"+step);
		return "/Master/"+step;
	}	
}


@Controller
@RequestMapping("/mainPage/")
class StepMainPageController {
	// MainPage 단순이동 컨트롤러
	@RequestMapping("/{step}.do")
	public String userJoin(@PathVariable String step) {
		System.out.println("단순이동 step:"+step);
		return "/MainPage/"+step;
	}
}