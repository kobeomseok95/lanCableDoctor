package com.kh.landocProject.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.member.model.Exception.MainMemberException;
import com.kh.landocProject.member.model.service.MainMemberService;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;

@SessionAttributes({"loginClient", "loginDrClient"})
@Controller
public class MainMemberController {
	
	@Autowired
	private MainMemberService mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private JavaMailSender mailSender;
	private static final Logger logger = LoggerFactory.getLogger(MainMemberController.class);
	private static final String String = null;
	
	@RequestMapping(value="loginView.do", method=RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
	// 일반 회원가입 창 이동_진교
	@RequestMapping(value="joinClientView.do", method=RequestMethod.GET)
	public String joinClient() {
		return "client/joinClient";
	}
	
	// 의사 회원가입 창 이동_진교
	@RequestMapping(value="joinDrView.do", method=RequestMethod.GET)
	public String joinDrClient() {
		return "drClient/joinDr";
	}
	
//	@RequestMapping(value="joinDr2.do", method=RequestMethod.GET)
//	public String joinDrClient2() {
//		return "drClient/joinDr2";
//	}
	
//	@RequestMapping(value="joinDr3.do", method=RequestMethod.GET)
//	public String joinDrClient3() {
//		return "drClient/joinDr3";
//	}
//	
//	@RequestMapping(value="joinDr4.do", method=RequestMethod.GET)
//	public String joinDrClient4() {
//		return "drClient/joinDr4";
//	}
	
	@RequestMapping(value="searchIdView.do", method=RequestMethod.GET)
	public String searchId() {
		return "member/searchId";
	}

	@RequestMapping(value="searchPwdView.do", method=RequestMethod.GET)
	public String searchPwd() {
		return "member/searchPwd";
	}

	@RequestMapping(value="searchPwd2.do", method=RequestMethod.GET)
	public String searchPwd2() {
		return "member/searchPwd2";
	}

	@RequestMapping(value="searchPwd3.do", method=RequestMethod.GET)
	public String searchPwd3() {
		return "member/searchPwd3";
	}

	@RequestMapping(value="searchPwd4.do", method=RequestMethod.GET)
	public String searchPwd4() {
		return "member/searchPwd4";
	}
	
	
	// 암호화 처리 일반 회원가입_진교
		@RequestMapping(value="joinClient.do", method=RequestMethod.POST)
		public String memberInsert(Client c, Model model,
									@RequestParam("address1") String address1,
									@RequestParam("address2") String address2) {
			System.out.println(c);
			
			
			// 비밀번호 암호화
			String encPwd = bcryptPasswordEncoder.encode(c.getUserPwd());
			
			System.out.println(encPwd);
		
			c.setUserPwd(encPwd);
			
			c.setAddress(address1 + "," + address2);
			
			int result = mService.joinClient(c);
			
			if(result > 0) {
				return "home";				
			}else {
				throw new MainMemberException("회원 가입 실패!");
			}
		}
	
		// 암호화 처리 로그인_진교
		@RequestMapping(value="memberLogin.do", method=RequestMethod.POST)
		public String memberLogin(Client c, DrClient d, Model model, @RequestParam("check") String check) {
			
//			System.out.println(check);
			
			if(check.equals("client")) {
				Client loginClient = mService.loginClient(c);
				
				System.out.println("암호화 처리 된 DB일반회원 : " + loginClient);
				
				if(bcryptPasswordEncoder.matches(c.getUserPwd(), loginClient.getUserPwd())) {
					model.addAttribute("loginClient",loginClient);
					return "home";
				}else {
					throw new MainMemberException("일반 회원 로그인 실패!");
				}
			}else if(check.equals("drClient")) {
				DrClient loginDrClient = mService.loginDoctor(d);
				
				System.out.println("암호화 처리 된 DB의사회원 : " + loginDrClient);
				
				if(bcryptPasswordEncoder.matches(d.getUserPwd(), loginDrClient.getUserPwd())) {
					model.addAttribute("loginDrClient",loginDrClient);
					return "home";
				}else {
					throw new MainMemberException("의사 회원 로그인 실패!");
					
				}
			}
			return "home";
		}
		
		// 아이디 찾기_진교
		@RequestMapping(value="searchId.do")
		public String searchId(Client c, DrClient d, Model model, 
								@RequestParam("check") String check,
								HttpServletResponse response_equals) throws IOException{
			
			System.out.println(check);
			
			if(check.equals("client")) {
				Client ClientSearchId = mService.searchIdClient(c);
				
				System.out.println(ClientSearchId);
				
				if(ClientSearchId != null) {
					model.addAttribute("ClientSearchId", ClientSearchId);
					
					response_equals.setContentType("text/html; charset=UTF-8");
					PrintWriter out_equals = response_equals.getWriter();
					out_equals.println("<script>alert('아이디는' + ClientSearchId.getUserId()); history.go(-1);</script>");
					out_equals.flush();
					
					return "member/login";
				}else {
					model.addAttribute("msg", "일반회원 아이디 찾기 실패");
					return "common/errorPage";
				}
			}else if(check.equals("drClient")) {
				DrClient DrClientsearchId = mService.searchIdDoctor(d);
				
				System.out.println(DrClientsearchId);
				
				if(DrClientsearchId != null) {
					model.addAttribute("DrClientsearchId", DrClientsearchId);
					return "member/login";
				}else {
					model.addAttribute("msg", "의사회원 아이디 찾기 실패");
					return "common/errorPage";
				}
			}
			return "member/login";
		
		}
		
		// 로그아웃_진교
		@RequestMapping(value="logout.do")
		public String logout(SessionStatus status) {
			status.setComplete();
			
			return "home";
		}
		
		// 의사 회원가입1(암호화 처리, 메일 인증)_진교
		@RequestMapping(value="joinDrClient.do", method=RequestMethod.POST)
		public ModelAndView joinDrClient(DrClient d,
										HttpServletRequest request,
										HttpServletResponse response_email,
										@RequestParam("email") String email,
										@RequestParam("address1") String address1,
										@RequestParam("address2") String address2) throws IOException {
			System.out.println("mainMemberController.java test line 222");
			System.out.println("(회원가입)입력받은 의사회원정보 : " + d);
			
			
			// 비밀번호 암호화
			String encPwd = bcryptPasswordEncoder.encode(d.getUserPwd());
			
			System.out.println(encPwd);
		
			d.setUserPwd(encPwd);
			
			d.setAddress(address1 + "," + address2);
			
			// 난수 생성_start
			StringBuffer temp = new StringBuffer();
			Random rnd = new Random();
			for(int i = 0; i < 10; i++) {
				int rIndex = rnd.nextInt(3);
	            switch (rIndex) {
	            case 0:
	                // a-z
	                temp.append((char) ((int) (rnd.nextInt(26)) + 97));
	                break;
	            case 1:
	                // A-Z
	                temp.append((char) ((int) (rnd.nextInt(26)) + 65));
	                break;
	            case 2:
	                // 0-9
	                temp.append((rnd.nextInt(10)));
	                break;
				}
			} // 난수 생성_end
			
			// 생성된 난수를 dice변수에 넣음
			String dice = temp.toString();
			
			String setfrom = "rornfl258@naver.com";								// 보내는 사람
			String tomail = email;			// 받는 사람 이메일
			String title = "읍남매들 회원 인증 이메일 입니다.";				// 제목
			String content =  System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
		            
		            System.getProperty("line.separator")+
		                    
		            "회원가입 인증 메일입니다."
		            
		            +System.getProperty("line.separator")+
		            
		            System.getProperty("line.separator")+
		    
		            " 인증번호는 " +dice+ " 입니다. "
		            
		            +System.getProperty("line.separator")+
		            
		            System.getProperty("line.separator")+
		            
		            "받으신 인증번호를 홈페이지에 입력해 주시면 됩니다.";	// 내용
			
			 try {
	                MimeMessage message = mailSender.createMimeMessage();
	                MimeMessageHelper messageHelper = new MimeMessageHelper(message,
	                        true, "UTF-8");
	 
	                messageHelper.setFrom(setfrom); 	// 보내는사람 생략하면 정상작동을 안함
	                messageHelper.setTo(tomail); 		// 받는사람 이메일
	                messageHelper.setSubject(title); 	// 메일제목은 생략이 가능하다
	                messageHelper.setText(content); 	// 메일 내용
	                
	                mailSender.send(message);
	            } catch (Exception e) {
	                System.out.println(e);
	            }
			
			int result = mService.joinDrClient(d);
			
			if(result > 0) {
				ModelAndView mv = new ModelAndView();		//ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
				mv.setViewName("/drClient/joinDr2");     //뷰의이름
	            mv.addObject("dice", dice);
	            
	            response_email.setContentType("text/html; charset=UTF-8");
	            PrintWriter out_equals = response_email.getWriter();
	            out_equals.println("<script>alert('인증번호가 일치하였습니다. 인증번호 입력창으로 이동합니다.');</script>");
	            out_equals.flush();
	            
	            return mv;
			}else {
				throw new MainMemberException("회원 가입 실패!");
			}
			
		}
		// 의사 회원가입2(인증번호 입력)_진교
		@RequestMapping(value="joinDrClient2.do")
		public ModelAndView loginDrClient2(String message, @RequestParam String dice,
											HttpServletResponse response_equals) throws IOException{
			System.out.println("mainMemberController.java test line 317");
			System.out.println("마지막 : message : " + message);
			System.out.println("마지막 : dice : " + dice);
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("drClient/joinDr3");
			mv.addObject("message", message);
			
			if(message.equals(dice)) {
				mv.setViewName("drClient/joinDr3");
				mv.addObject("e_mail", message);
				
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('인증번호가 일치하였습니다. 파일제출 창으로 이동합니다.');</script>");
				out_equals.flush();
				
				return mv;
			}else if(message != dice) {
				
				ModelAndView mv2 = new ModelAndView();
				mv2.setViewName("drClient/joinDr2");
				
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
				out_equals.flush();
				
				return mv2;
			}
			
			return mv;
		}
}
