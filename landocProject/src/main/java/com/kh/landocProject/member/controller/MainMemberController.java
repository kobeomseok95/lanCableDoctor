package com.kh.landocProject.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.member.model.Exception.MainMemberException;
import com.kh.landocProject.member.model.service.MainMemberService;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.member.model.vo.DrhpPhoto;
import com.kh.landocProject.member.model.vo.ProfilePhoto;

@SessionAttributes({ "loginClient", "loginDrClient" })
@Controller
public class MainMemberController {

	@Autowired
	private MainMemberService mService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
//	사진 저장 폴더
	private final String filePath = "C:\\lanCableDoctorProject\\files\\";

	@Autowired
	private JavaMailSender mailSender;
	private static final Logger logger = LoggerFactory.getLogger(MainMemberController.class);
	private static final String String = null;

	@RequestMapping(value = "loginView.do", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}

	// 일반 회원가입 창 이동_진교
	@RequestMapping(value = "joinClientView.do", method = RequestMethod.GET)
	public String joinClient() {
		return "client/joinClient";
	}

	// 의사 회원가입 창 이동_진교
	@RequestMapping(value = "joinDrView.do", method = RequestMethod.GET)
	public String joinDrClient() {
		return "drClient/joinDr";
	}

	@RequestMapping(value = "searchIdView.do", method = RequestMethod.GET)
	public String searchId() {
		return "member/searchId";
	}

	@RequestMapping(value = "searchPwdView.do", method = RequestMethod.GET)
	public String searchPwd() {
		return "member/searchPwd";
	}
	
	@RequestMapping(value = "modifyClientView.do", method = RequestMethod.GET)
	public ModelAndView modifyClientView(Client c, ModelAndView mv, Model model, HttpSession session,  @RequestParam(value="result1", required=false) Integer result1) {
		System.out.println("mainMemberController.java test line 84");
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo = loginClient.getcNo();
		Client loginClient2 = mService.loginClient2(cNo);
//		System.out.println("loginClient2 : " + loginClient2);
		
		if(loginClient2 != null) {
			if(result1 !=  null) {
				mv.addObject("loginClient2",loginClient2);
				mv.addObject("result1",result1);
				mv.setViewName("client/modifyClient");
				return mv;
			}else {
				mv.addObject("loginClient2",loginClient2);
				mv.setViewName("client/modifyClient");
				return mv;				
			}
		}else {
			mv.setViewName("home");
			return mv;
		}
	}
	
	@RequestMapping(value = "modifyDrClientView.do")
	public ModelAndView modifyDrClientView(ModelAndView mv, HttpSession session, @RequestParam(value="result1", required=false) Integer result1) {
		System.out.println("mainMemberController.java test line 109");
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo = loginDrClient.getDrNo();
//		System.out.println(drNo);
		DrClient loginDrClient2 = mService.loginDrClient2(drNo);
//		System.out.println("loginDrClient2 : " + loginDrClient2);
		
		if(loginDrClient2 != null) {
			if(result1 !=  null) {
				mv.addObject("loginDrClient2",loginDrClient2);
				mv.addObject("result1",result1);
				mv.setViewName("drClient/modifyDrClient");
				return mv;
			}else {
				mv.addObject("loginDrClient2",loginDrClient2);
				mv.setViewName("drClient/modifyDrClient");
				return mv;				
			}
		}
		
		else {
			mv.setViewName("home");
			return mv;
		}
	}

	// 암호화 처리 일반 회원가입_진교
	@RequestMapping(value = "joinClient.do", method = RequestMethod.POST)
	public String memberInsert(Client c, ProfilePhoto pp, Model model, @RequestParam("address1") String address1,
			@RequestParam("address2") String address2) {
//		System.out.println(c);

		System.out.println("mainMemberController.java test line 141");


		// 비밀번호 암호화
		String encPwd = bcryptPasswordEncoder.encode(c.getUserPwd());

//		System.out.println(encPwd);

		c.setUserPwd(encPwd);

		c.setAddress(address1 + "," + address2);

		int result = mService.joinClient(c);
		
		if (result > 0) {
			// 일반회원(회원가입한) 정보 가져오기
			Client ClientCno = mService.ClientCno(c);
//			System.out.println("ClientCno : " + ClientCno);
			pp.setcNo(ClientCno.getcNo());
			// 프로필 사진 null값 등록
			int result1 = mService.ClientInsertProfile(pp);
			return "home";
		} else {
			throw new MainMemberException("회원 가입 실패!");
		}
	}

	// 암호화 처리 로그인_진교
	@RequestMapping(value = "memberLogin.do", method = RequestMethod.POST)

	public String memberLogin(Client c, DrClient d, Model model, @RequestParam("check") String check, HttpServletResponse response_equals) throws IOException{
		System.out.println("mainMemberController.java test line 172");
//			System.out.println(check);


		if (check.equals("client")) {
			Client loginClient = mService.loginClient(c);
//			System.out.println("암호화 처리 된 DB일반회원 : " + loginClient);
			if(loginClient.getStatus().equals("Y")) {
				if (bcryptPasswordEncoder.matches(c.getUserPwd(), loginClient.getUserPwd())) {
					model.addAttribute("loginClient", loginClient);
					return "home";
				} else {
					response_equals.setContentType("text/html; charset=UTF-8");
					PrintWriter out_equals = response_equals.getWriter();
					out_equals.println("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.');</script>");
					out_equals.flush();
					return "member/login";
				}
			}else {
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('탈퇴 하였거나 회원 정보가 없습니다.');</script>");
				out_equals.flush();
				return "member/login";
			}
		
		} else if (check.equals("drClient")) {
			DrClient loginDrClient = mService.loginDoctor(d);

//			System.out.println("암호화 처리 된 DB의사회원 : " + loginDrClient);
			if(loginDrClient.getApproval().equals("Y") && loginDrClient.getStatus().equals("Y")) {
				if (bcryptPasswordEncoder.matches(d.getUserPwd(), loginDrClient.getUserPwd())) {
					model.addAttribute("loginDrClient", loginDrClient);
					return "home";
				} else {
					response_equals.setContentType("text/html; charset=UTF-8");
					PrintWriter out_equals = response_equals.getWriter();
					out_equals.println("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.');</script>");
					out_equals.flush();
					return "member/login";
				}
			}else if(loginDrClient.getApproval().equals("N") && loginDrClient.getStatus().equals("Y")) {
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('아직 승인을 받지 못하셨습니다.');</script>");
				out_equals.flush();
				return "member/login";

			}else if(loginDrClient.getApproval().equals("Y") && loginDrClient.getStatus().equals("N")) {
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('탈퇴하였거나 정보가 없습니다.');</script>");
				out_equals.flush();
				return "member/login";
			}else {
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('승인을 받지 못했거나 회원 정보가 없습니다.');</script>");
				out_equals.flush();
				return "member/login";
			}
		}
		return "home";
	}

	// 아이디 찾기_진교
	@RequestMapping(value = "searchId.do")
	public String searchId(Client c, DrClient d, Model model, @RequestParam("check") String check,
			HttpServletResponse response_equals) throws IOException {
		System.out.println("mainMemberController.java test line 241");
//		System.out.println(check);

		if (check.equals("client")) {
			Client ClientSearchId = mService.searchIdClient(c);

//			System.out.println(ClientSearchId);

			if (ClientSearchId != null) {
				model.addAttribute("ClientSearchId", ClientSearchId);

				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('아이디는'" + ClientSearchId.getUserId() +" '입니다.');</script>");
				out_equals.flush();

				return "member/login";
			} else {
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('입력하신 정보가 없습니다.');</script>");
				out_equals.flush();
				return "member/searchId";
			}
		} else if (check.equals("drClient")) {
			DrClient DrClientsearchId = mService.searchIdDoctor(d);

			System.out.println(DrClientsearchId);

			if (DrClientsearchId != null) {
				model.addAttribute("DrClientsearchId", DrClientsearchId);
				return "member/login";
			} else {
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('입력하신 정보가 없습니다.');</script>");
				out_equals.flush();
				return "member/searchId";
			}
		}
		return "member/login";

	}

	// 로그아웃_진교
	@RequestMapping(value = "logout.do")
	public String logout(SessionStatus status) {
		System.out.println("mainMemberController.java test line 288");
		status.setComplete();
		
		return "redirect:home.do";
	}

	// 의사 회원가입1(암호화 처리, 메일 인증)_진교
	@RequestMapping(value = "joinDrClient.do", method = RequestMethod.POST)
	public ModelAndView joinDrClient(DrClient d, ProfilePhoto pp, HttpServletRequest request, HttpServletResponse response_email,
			@RequestParam("email") String email, @RequestParam("address1") String address1,
			@RequestParam("address2") String address2) throws IOException {
		System.out.println("mainMemberController.java test line 299");
//		System.out.println("(회원가입)입력받은 의사회원정보 : " + d);

		// 비밀번호 암호화
		String encPwd = bcryptPasswordEncoder.encode(d.getUserPwd());

//		System.out.println(encPwd);

		d.setUserPwd(encPwd);

		d.setAddress(address1 + "," + address2);

		// 난수 생성_start
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
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

		String setfrom = "rornfl258@naver.com"; // 보내는 사람
		String tomail = email; // 받는 사람 이메일
		String title = "읍남매들 회원 인증 이메일 입니다."; // 제목
		String content = System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성

				System.getProperty("line.separator") +

				"회원가입 인증 메일입니다."

				+ System.getProperty("line.separator") +

				System.getProperty("line.separator") +

				" 인증번호는 " + dice + " 입니다. "

				+ System.getProperty("line.separator") +

				System.getProperty("line.separator") +

				"받으신 인증번호를 홈페이지에 입력해 주시면 됩니다."; // 내용

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		int result = mService.joinDrClient(d);

		if (result > 0) {
			ModelAndView mv = new ModelAndView(); // ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
			mv.setViewName("/drClient/joinDr2"); // 뷰의이름
			mv.addObject("dice", dice);
			mv.addObject("email", tomail);

			response_email.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_email.getWriter();
			out_equals.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
			out_equals.flush();
			
			// 일반회원(회원가입한) 정보 가져오기
			DrClient DrClientDrNo = mService.DrClientDrNo(d);
			System.out.println("DrClientDrNo : " + DrClientDrNo);
			pp.setDrNo(DrClientDrNo.getDrNo());
			// 프로필 사진 null값 등록
			int result1 = mService.DrClientInsertProfile(pp);

			return mv;
		} else {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/drClient/joinDr1"); // 뷰의이름
			response_email.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_email.getWriter();
			out_equals.println("<script>alert('회원가입에 실페하셨습니다.');</script>");
			out_equals.flush();
			return mv;
		}

	}

	// 의사 회원가입2(인증번호 입력)_start_진교
	@RequestMapping(value = "joinDrClient2.do")
	public ModelAndView loginDrClient2(DrClient d, String message, @RequestParam String dice,
			@RequestParam String email, HttpServletResponse response_equals) throws IOException {
		System.out.println("mainMemberController.java test line 407");
//				System.out.println("마지막 : message : " + message);
//				System.out.println("마지막 : dice : " + dice);
//				System.out.println("email : " + email);

		// 의사 번호를 찾기위함
		DrClient joinDrClient2 = mService.joinDrClient2(d);

//				System.out.println(joinDrClient2);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("drClient/joinDr3");
		mv.addObject("message", message);
		mv.addObject("joinDrClient2", joinDrClient2);

		if (message.equals(dice)) {
			mv.setViewName("drClient/joinDr3");
			mv.addObject("e_mail", message);
			mv.addObject("joinDrClient2", joinDrClient2);

			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하였습니다. 파일제출 창으로 이동합니다.');</script>");
			out_equals.flush();

			return mv;
		} else if (message != dice) {

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
	// 의사 회원가입2(인증번호 입력)_end

	// 의사 회원가입3(파일제출)_진교_start
	@RequestMapping("joinDrClient3.do")
	public String insertFile1(HttpServletRequest request, DrhpPhoto dhp, DrClient d, @RequestParam("drNo") String drNo,
			@RequestParam("hpNo") String hpNo,
			@RequestParam(value = "uploadFile1", required = false) MultipartFile file1,
			@RequestParam(value = "uploadFile2", required = false) MultipartFile file2,
			@RequestParam(value = "uploadFile3", required = false) MultipartFile file3) {
		System.out.println("mainMemberController.java test line 445");
//				System.out.println("drNo : " + drNo);
//				System.out.println("hpNo : " + hpNo);
//				System.out.println("file1 : " + file1);
//				System.out.println("file2 : " + file2);
//				System.out.println("file3 : " + file3);
		DrClient DrFile = mService.DrFile(drNo);
		if(DrFile != null) {
			if(DrFile.getProRename() != null) {
				deleteProfile(DrFile.getProRename(), request);
			}
		}
		
		if (!file1.getOriginalFilename().equals("")) {
			String renameFileName1 = saveFile(file1, request);

//					System.out.println("오리진 파일1 : " + file1.getOriginalFilename());
//					System.out.println("renameFileName1 : " + renameFileName1);
//					System.out.println();

			dhp.setDrhpOrigin(file1.getOriginalFilename());

			dhp.setDrhpRename(renameFileName1);

		}
		int result1 = mService.insertFile1(dhp);

		if (result1 > 0) {
			if (!file2.getOriginalFilename().equals("")) {
				String renameFileName2 = saveFile(file2, request);

//						System.out.println("오리진 파일2 : " + file2.getOriginalFilename());

				dhp.setDrhpOrigin(file2.getOriginalFilename());

				dhp.setDrhpRename(renameFileName2);

			}

			int result2 = mService.insertFile2(dhp);

			if (result2 > 0) {
				if (!file3.getOriginalFilename().equals("")) {
					String renameFileName3 = saveFile(file3, request);

//							System.out.println("오리진 파일3 : " + file3.getOriginalFilename());

					dhp.setDrhpOrigin(file3.getOriginalFilename());

					dhp.setDrhpRename(renameFileName3);
				}

				int result3 = mService.insertFile3(dhp);

				if (result3 > 0) {
					return "drClient/joinDr4";
				} else {
					throw new MainMemberException("게시글 등록 실패!");
				}

			} else {
				throw new MainMemberException("게시글 등록 실패!");
			}

		} else {
			throw new MainMemberException("게시글 등록 실패!");
		}
	}

	public String saveFile(MultipartFile file, HttpServletRequest request) {
//		String root = request.getSession().getServletContext().getRealPath("resources");

//		String savePath = root + "\\drUploadFiles";
//
//		File folder = new File(savePath);
		File folder = new File(filePath);
		

		if (!folder.exists()) {
			folder.mkdirs();
		}

		// 난수 생성(renameFileName이 겹쳐서)
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 5; i++) {
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

		String dice = temp.toString();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + dice + "."
				+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

//		String filePath = folder + "\\" + renameFileName;
		
		String saveFile = filePath + renameFileName;

		try {
			file.transferTo(new File(saveFile));
		} catch (Exception e) {
			System.out.println("파일 제출 에러 : " + e.getMessage());
		}
		return renameFileName;
	}
	// 의사 회원가입3(파일 제출)_end
	
	
	

	// 비밀번호 찾기_진교
	@RequestMapping(value = "searchPwd.do")
	public String searchPwd(Client c, DrClient d, Model model, @RequestParam("check") String check,
			HttpServletResponse response_equals) throws IOException {
		System.out.println("mainMemberController.java test line 587");
//		System.out.println(check);

		if (check.equals("client")) {
			Client ClientSearchPwd = mService.searchPwdClient(c);

//			System.out.println(ClientSearchPwd);

			if (ClientSearchPwd != null) {
				model.addAttribute("ClientSearchPwd", ClientSearchPwd);

				return "member/searchPwd2";
			} else {
				model.addAttribute("msg", "일반회원 아이디 찾기 실패");
				return "common/errorPage";
			}
		} else if (check.equals("drClient")) {
			DrClient DrClientSearchPwd = mService.SearchPwdDrClient(d);

//			System.out.println(DrClientSearchPwd);

			if (DrClientSearchPwd != null) {
				model.addAttribute("DrClientSearchPwd", DrClientSearchPwd);
				return "member/searchPwd2";
			} else {
				model.addAttribute("msg", "의사회원 아이디 찾기 실패");
				return "common/errorPage";
			}
		}
		return "member/searchPwd2";

	}
	// 일반회원 비밀번호 찾기2
	@RequestMapping(value = "ClientSearchPwd2.do")
	public ModelAndView ClientSearchPwd2(Client c, HttpServletRequest request, HttpServletResponse response_email,
			@RequestParam("email") String email, @RequestParam("cNo") String cNo) throws IOException {
		System.out.println("mainMemberController.java test line 623");

//		System.out.println(email);
//		System.out.println(cNo);

		// 난수 생성_start
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
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

		String setfrom = "rornfl258@naver.com"; // 보내는 사람
		String tomail = email; // 받는 사람 이메일
		String title = "읍남매들 회원 인증 메일 입니다."; // 제목
		String content = System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성

				System.getProperty("line.separator") +

				"비밀번호 찾기 인증 메일입니다."

				+ System.getProperty("line.separator") +

				System.getProperty("line.separator") +

				" 인증번호는 " + dice + " 입니다. "

				+ System.getProperty("line.separator") +

				System.getProperty("line.separator") +

				"받으신 인증번호를 홈페이지에 입력해 주시면 됩니다."; // 내용

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		// 일반회원 정보
		Client ClientSearchPwd2 = mService.ClientSearchPwd2(c);
//		System.out.println(ClientSearchPwd2);
		if (ClientSearchPwd2 != null) {
			ModelAndView mv = new ModelAndView(); // ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
			mv.setViewName("/member/searchPwd3"); // 뷰의이름
			mv.addObject("dice", dice);
			mv.addObject("email", tomail);
			mv.addObject("ClientSearchPwd2", ClientSearchPwd2);

			response_email.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_email.getWriter();
			out_equals.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
			out_equals.flush();

			return mv;
		} else {
			throw new MainMemberException("비밀번호 찾기 실패!");
		}
		
	}
	// 의사회원 비밀번호 찾기2
	@RequestMapping(value = "DrClientSearchPwd2")
	public ModelAndView DrClientSearchPwd2(DrClient d, HttpServletRequest request, HttpServletResponse response_email,
			@RequestParam("email") String email, @RequestParam("drNo") String drNo) throws IOException {
		System.out.println("mainMemberController.java test line 712");

//		System.out.println(email);
//		System.out.println(drNo);

		// 난수 생성_start
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
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

		String setfrom = "rornfl258@naver.com"; // 보내는 사람
		String tomail = email; // 받는 사람 이메일
		String title = "읍남매들 회원 인증 메일 입니다."; // 제목
		String content = System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성

				System.getProperty("line.separator") +

				"비밀번호 찾기 인증 메일입니다."

				+ System.getProperty("line.separator") +

				System.getProperty("line.separator") +

				" 인증번호는 " + dice + " 입니다. "

				+ System.getProperty("line.separator") +

				System.getProperty("line.separator") +

				"받으신 인증번호를 홈페이지에 입력해 주시면 됩니다."; // 내용

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		// 의사 회원정보
		DrClient DrClientSearchPwd2 = mService.DrClientSearchPwd2(d);
//		System.out.println(DrClientSearchPwd2);

		if (DrClientSearchPwd2 != null) {
			ModelAndView mv = new ModelAndView(); // ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
			mv.setViewName("/member/searchPwd3"); // 뷰의이름
			mv.addObject("dice", dice);
			mv.addObject("email", tomail);
			mv.addObject("DrClientSearchPwd2", DrClientSearchPwd2);

			response_email.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_email.getWriter();
			out_equals.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
			out_equals.flush();

			return mv;
		} else {
			throw new MainMemberException("회원 가입 실패!");
		}

	}
	// 일반회원 비밀번호 찾기 3
	@RequestMapping(value = "ClientSearchPwd3.do")
	public ModelAndView ClientSearchPwd3(Client c, String message, @RequestParam("dice") String dice, @RequestParam("cNo") String cNo,
			HttpServletResponse response_equals) throws IOException {
		System.out.println("mainMemberController.java test line 702");
//				System.out.println("마지막 : message : " + message);
//				System.out.println("마지막 : dice : " + dice);
//				System.out.println("마지막 : cNo : " + cNo);

		// 의사 번호를 찾기위함
		Client ClientSearchPwd3 = mService.ClientSearchPwd3(c);

//				System.out.println(joinDrClient2);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("drClient/joinDr3");
		mv.addObject("message", message);
		mv.addObject("ClientSearchPwd3", ClientSearchPwd3);

		if (message.equals(dice)) {
			mv.setViewName("member/searchPwd4");
			mv.addObject("e_mail", message);
			mv.addObject("ClientSearchPwd3", ClientSearchPwd3);

			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하였습니다.비밀번호 변경창으로 넘어갑니다.');</script>");
			out_equals.flush();

			return mv;
		} else if (message != dice) {

			ModelAndView mv2 = new ModelAndView();
			mv2.setViewName("member/searchPwd3");

			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
			out_equals.flush();

			return mv2;
		}

		return mv;
	}
	// 의사회원 비밀번호 찾기3
	@RequestMapping(value = "DrClientSearchPwd3.do")
	public ModelAndView DrClientSearchPwd3(DrClient d, String message, @RequestParam("dice") String dice, @RequestParam("drNo") String drNo,
			HttpServletResponse response_equals) throws IOException {
		System.out.println("mainMemberController.java test line 847");
//				System.out.println("마지막 : message : " + message);
//				System.out.println("마지막 : dice : " + dice);
//				System.out.println("마지막 : cNo : " + cNo);

		// 의사 번호를 찾기위함
		DrClient DrClientSearchPwd3 = mService.DrClientSearchPwd3(d);

//				System.out.println(DrClientSearchPwd3);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("drClient/joinDr3");
		mv.addObject("message", message);
		mv.addObject("DrClientSearchPwd3", DrClientSearchPwd3);

		if (message.equals(dice)) {
			mv.setViewName("member/searchPwd4");
			mv.addObject("e_mail", message);
			mv.addObject("DrClientSearchPwd3", DrClientSearchPwd3);

			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하였습니다. 비밀번호 변경 창으로 넘어갑니다.');</script>");
			out_equals.flush();

			return mv;
		} else if (message != dice) {

			ModelAndView mv2 = new ModelAndView();
			mv2.setViewName("member/searchPwd3");

			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
			out_equals.flush();

			return mv2;
		}

		return mv;
	}
	// 일반회원 비밀번호 찾기4
	@RequestMapping(value="ClientSearchPwd4")
	public ModelAndView ClientSearchPwd4(Client c, HttpServletResponse response_equals, ModelAndView mv) throws IOException{
		System.out.println("mainMemberController.java test line 891");
		// 비밀번호 암호화
		String encPwd = bcryptPasswordEncoder.encode(c.getUserPwd());

//				System.out.println(encPwd);

		c.setUserPwd(encPwd);
		
		int result = mService.ClientSearchPwd4(c);
		
		if(result > 0) {
			mv.setViewName("member/login");
			
			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('비밀번호 변경이 완료되었습니다, 로그인 창으로 돌아갑니다.');</script>");
			out_equals.flush();
		}else {
			mv.setViewName("home");
			
			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('비밀번호 변경 실패하셨습니다.');</script>");
			out_equals.flush();
		}
		
		return mv;
	}
	// 의사회원 비밀번호 찾기4
	@RequestMapping(value="DrClientSearchPwd4")
	public ModelAndView DrClientSearchPwd4(DrClient d, HttpServletResponse response_equals, ModelAndView mv) throws IOException{
		System.out.println("mainMemberController.java test line 922");
		// 비밀번호 암호화
		String encPwd = bcryptPasswordEncoder.encode(d.getUserPwd());

//				System.out.println(encPwd);

		d.setUserPwd(encPwd);
		
		int result = mService.DrClientSearchPwd4(d);
		
		if(result > 0) {
			mv.setViewName("member/login");
			
			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('비밀번호 변경이 완료되었습니다, 로그인 창으로 돌아갑니다.');</script>");
			out_equals.flush();
		}else {
			mv.setViewName("home");
			
			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('비밀번호 변경 실패하셨습니다.');</script>");
			out_equals.flush();
		}
		
		return mv;
	}
	// 일반회원 정보 수정
	@RequestMapping(value="updateClient")
	public String updateClient(Client c, ProfilePhoto pp, HttpServletRequest request, HttpServletResponse response_equals,
			@RequestParam("cNo") String cNo, @RequestParam(value = "profile", required = false) MultipartFile profile) throws IOException{
		System.out.println("mainMemberController.java test line 954");
		
		Client CProfile = mService.CProfile(cNo);
//		System.out.println(CProfile);
		
		if (!profile.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(profile, request);


			pp.setProOrigin(profile.getOriginalFilename());

			pp.setProRename(renameFileName);
			
			if(CProfile != null) {
				if(CProfile.getProRename() != null) {
					deleteProfile(CProfile.getProRename(), request);
				}
			}

			int result = mService.updateClientProfile(pp);
		}
		

		
		
		int result1 = mService.updateClient(c);
			
			if(result1 > 0) {

				return "redirect:modifyClientView.do?result1=" + result1;
				
			}else {
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('회원정보 수정 실패하셨습니다.');</script>");
				out_equals.flush();
				return "home";
			}
			
	}
	
	// 파일 update시 삭제
	public void deleteProfile(String fileName, HttpServletRequest request) {
		System.out.println("mainMemberController.java test line 985");
		String path = "C:\\lanCableDoctorProject\\files\\" + fileName;
		
		File file = new File(path);
		if( file.exists() ) {
			file.delete();
		}
	}
		
	// 의사회원 정보 수정
	@RequestMapping(value="updateDrClient", method=RequestMethod.POST)
	public String updateDrClient(DrClient d, ProfilePhoto pp, HttpServletRequest request, HttpServletResponse response_equals,
			@RequestParam("drNo") String drNo, @RequestParam(value = "profile", required = false) MultipartFile profile) throws IOException{
		System.out.println("mainMemberController.java test line 1010");

		DrClient DrProfile = mService.DrProfile(drNo);
		
		if (!profile.getOriginalFilename().equals("")) {
			
			String renameFileName = saveFile(profile, request);

			
			pp.setProOrigin(profile.getOriginalFilename());

			pp.setProRename(renameFileName);
			

			if(DrProfile != null) {
				if(DrProfile.getProRename() != null) {
					deleteProfile(DrProfile.getProRename(), request);
				}
			}

			int result = mService.updateDrClientProfile(pp);
			
		}
		

		
		int result1 = mService.updateDrClient(d);
			
			if(result1 > 0) {

				return "redirect:modifyDrClientView.do?result1=" + result1;
			}else {
//				mv.setViewName("modifyDrClientView.do");
				
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('회원정보 수정 실패하셨습니다.');</script>");
				out_equals.flush();
				return "home";
			}
			
	}
	
	// 일반회원 탈퇴
	@RequestMapping(value="ClientDelete.do")
	public String ClientDelete(@RequestParam("cNo") String cNo, HttpServletResponse response_equals, SessionStatus status) throws IOException {
		System.out.println("mainMemberController.java test line 1056");
		int result = mService.ClientDelete(cNo);
		
		if(result > 0) {
			return "redirect:logout.do";
			
		}else {
			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('탈퇴에 실패하셨습니다.');</script>");
			out_equals.flush();
			return "home";
		}
		
	}
	
	// 의사회원 탈퇴
		@RequestMapping(value="DrClientDelete.do")
		public String DrClientDelete(@RequestParam("drNo") String drNo, HttpServletResponse response_equals, SessionStatus status) throws IOException {
			System.out.println("mainMemberController.java test line 1075");
			int result = mService.DrClientDelete(drNo);
			
			if(result > 0) {
				status.setComplete();
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('탈퇴 되었습니다.');</script>");
				out_equals.flush();
				return "home";
			}else {
				response_equals.setContentType("text/html; charset=UTF-8");
				PrintWriter out_equals = response_equals.getWriter();
				out_equals.println("<script>alert('탈퇴에 실패하셨습니다.');</script>");
				out_equals.flush();
				return "home";
			}
			
		}
}
