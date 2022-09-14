package com.project;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.app.KakaoLogin;
import com.project.app.MemberExcel;
import com.project.dto.CartDTO;
import com.project.dto.ColorDTO;
import com.project.dto.FileDTO;
import com.project.dto.FileImageDTO;
import com.project.dto.MemberDTO;
import com.project.dto.MemberOrderDTO;
import com.project.dto.NoticeDTO;
import com.project.dto.NoticeMainDTO;
import com.project.dto.ProductDTO;
import com.project.dto.QnADTO;
import com.project.dto.QnareplyDTO;
import com.project.dto.SizesDTO;
import com.project.dto.categoryDTO;
import com.project.service.BoardService;
import com.project.service.MemberService;
import com.project.service.ProductService;
import com.project.service.QnAService;
import com.project.vo.PagingVO;

@Controller
public class MainController {
	private MemberService memberService;
	private ProductService productservice;
	private KakaoLogin kakaoService;
	private BoardService boardService;
	private QnAService qnaservice;

	public MainController(MemberService memberService, ProductService productservice, KakaoLogin kakaoService,
			BoardService boardService, QnAService qnaservice) {
		this.memberService = memberService;
		this.productservice = productservice;
		this.kakaoService = kakaoService;
		this.boardService = boardService;
		this.qnaservice = qnaservice;
	}

	@RequestMapping("/tables.do")
	public String tables() {
		return "tables";
	}

	// ------------------------- 박홍희, 심현성, 유선영 ---------------------------//

	/*
	 * 메인 페이지 이동
	 */
	@RequestMapping("/")
	public String main(Model model) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* 카테고리 목록 불러오는 부분 */
//		System.out.println(categorylist);
		model.addAttribute("clist", categorylist);

		List<ProductDTO> productpreview = productservice.selectProductList();
//		System.out.println(productlist.toString()+"sefklsejfkl");
		model.addAttribute("productpreview", productpreview);

		return "index";
	}

	/*
	 * index.do 메인 페이지 이동
	 */
	@RequestMapping("/index.do")
	public String index(Model model) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* 카테고리 목록 불러오는 부분 */
//		System.out.println(categorylist);
		model.addAttribute("clist", categorylist);

		List<ProductDTO> productpreview = productservice.selectProductList();
//		System.out.println(productlist.toString()+"sefklsejfkl");
		model.addAttribute("productpreview", productpreview);

		return "index";
	}

	@RequestMapping("/category_detail_view.do")
	public String categoryDetailView(Model model, String categoryno) {
		System.out.println(categoryno);
		List<ProductDTO> productlist = productservice.selectProductDetailList(categoryno); /* 카테고리별 리스트 뽑는 부분 */
		model.addAttribute("productlist", productlist);

		return "shop-fullwidth";
	}

	// ------------------------- 박홍희, 심현성, 유선영 ---------------------------//

	// ------------------------------- 김준걸 ---------------------------------//

	/*
	 * 로그인 페이지 이동
	 */
	@RequestMapping("/login-page.do")
	public String login_page(Model model) {
		return "login";
	}

	/*
	 * 로그인 기능
	 */
	@RequestMapping("login.do")
	public String login(String id, String passwd, HttpSession session) {
		MemberDTO dto = memberService.login(id, passwd);

		if (dto != null) {
			session.setAttribute("login", true);
			session.setAttribute("id", dto.getMemberId());
			session.setAttribute("name", dto.getMemberName());
			return "redirect:/";
		} else {
			session.setAttribute("login", false);
			return "login";
		}
	}

	/*
	 * 로그아웃 기능
	 */
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/";

	}

	/*
	 * 회원 가입 페이지 이동
	 */
	@RequestMapping("/register-page.do")
	public String register(Model model) {
		return "register";
	}

	/*
	 * 회원가입 기능
	 */
	@RequestMapping("/register.do")
	public String insertMember(MemberDTO dto) {
		memberService.insertMember(dto);
		return "redirect:/";
	}

	/*
	 * 아이디 중복 확인 기능
	 */
	@RequestMapping("/idCheck.do")
	public void idCheck(String memberId, HttpServletResponse response) throws IOException {
		String id_cmp = memberService.selectId(memberId);

		if (memberId.equals(id_cmp)) {
			response.getWriter().write(String.valueOf(0));
		} else {
			response.getWriter().write(String.valueOf(1));
		}
	}

	/*
	 * qna 페이지 진입!
	 */
	@RequestMapping("/qna_page.do")
	public String qna_page() {

		return "qna";
	}

	/*
	 * 리뷰 페이지 진입
	 */
	@RequestMapping("/qnalist.do")
	public String qna_page(Model model) {
		return "qnalist";
	}

	/*
	 * 글쓰기 기능
	 */
	@RequestMapping("/boardWrite.do")
	public String boardWrite(QnADTO qnadto, MultipartHttpServletRequest request) throws UnsupportedEncodingException {
		System.out.println(qnadto);
		int qno = qnaservice.insertBoard(qnadto);

		String root = "c:\\fileUpload\\";
		File userRoot = new File(root);
		if (!userRoot.exists())
			userRoot.mkdirs();

		List<MultipartFile> fileList = request.getFiles("file");
		int i = 1;
		for (MultipartFile f : fileList) {
			String originalFileName = f.getOriginalFilename();
			System.out.println(originalFileName);
			if (f.getSize() == 0)
				continue;
			File uploadFile = new File(root + "\\" + originalFileName);
			int check = 0;
			check = qnaservice.insertFileList(new FileImageDTO(uploadFile, qno, i));
			System.out.println("check : " + check);
			i++;
			try {
				// 실제로 전송
				f.transferTo(uploadFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return "redirect:/Allqnalist.do";
	}

	/*
	 * qna 목록
	 */
	@RequestMapping("/Allqnalist.do")
	public String Allqnalist(QnADTO qnadto, Model model) {
		List<QnADTO> qnalist = qnaservice.Allqnalist();
		model.addAttribute("list", qnalist);
		System.out.println(qnalist);
		return "qnalist";
	}

	/*
	 * qan 목록 조회
	 */
	@RequestMapping("/qnaview_page.do")
	public String boardView(int qno, Model model, HttpSession session) {
		QnADTO dto = qnaservice.serqnaview(String.valueOf(qno));
		// List<FileDTO> flist = qnaservice.selectFileList(qno);
		List<QnareplyDTO> qnacomment = qnaservice.selectqnarepiyDTO(qno);
		model.addAttribute("qna", dto);
		// model.addAttribute("flist", flist);
		model.addAttribute("qnacomment", qnacomment);
		return "qnaview";
	}

	/*
	 * 댓글 기능
	 */
	@RequestMapping("qnareply.do")
	public String qnareply(QnareplyDTO qnareplydto) {
		System.out.println(qnareplydto);
		qnaservice.insertqnaDTO(qnareplydto);
		return "forward:/qnaview_page.do?qno=" + qnareplydto.getQno();
	}

	/*
	 * 댓글 목록
	 */
	@RequestMapping("/insertComment.do")
	public void insertComment(String qno, String writer, String qnarecontent, HttpServletResponse response) {
		QnareplyDTO dto = new QnareplyDTO(qno, qnarecontent, writer);
		int result = qnaservice.insertqnaComment(dto);
		try {
			response.getWriter().write(String.valueOf(result));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// ------------------------------- 김준걸 ---------------------------------//

	// ------------------------------- 황상혁 ---------------------------------//

	/*
	 * 홈페이지 소개 페이지 이동
	 */
	@RequestMapping("/about-page.do")
	public String about_page() {

		return "about";
	}

	/*
	 * 홈페이지 카트 목록 조회
	 */
	@RequestMapping("/cart_list.do")
	public void selectCartList(HttpServletResponse response, HttpSession session) throws IOException {
		response.setCharacterEncoding("UTF-8");
		JSONObject json = new JSONObject();
		String id = (String) session.getAttribute("id");
		List<CartDTO> list = null;

		try {
			if (id != null) {
				list = memberService.selectCartList(id);
			}
			JSONArray arr = new JSONArray(list);
			json.put("list", arr);
			System.out.println(json.toString());

		} catch (Exception e) {
			json.put("message", "카트에 담은 상품이 없습니다.");
		}

		response.getWriter().write(json.toString());

		/*
		 * if (list.isEmpty()) { json.put("message", "카트에 담은 상품이 없습니다."); } else {
		 * 
		 * }
		 */
	}

	/*
	 * 공지 사항 페이지 이동
	 */
	@RequestMapping("/notice.do")
	public String selectNoticeContent(Model model, @RequestParam(name = "pageNo", defaultValue = "1") String pageNo) {
		List<NoticeMainDTO> list = boardService.selectNoticeContent(pageNo);

		model.addAttribute("list", list);
		System.out.println(list);

		int count = boardService.selectNoticeCount();
		PagingVO vo = new PagingVO(count, Integer.parseInt(pageNo), 5, 5);
		model.addAttribute("paging", vo);

		return "notice";
	}

	/*
	 * 마이 페이지 이동
	 */
	@RequestMapping("/my-account.do")
	public String my_account_page() {

		return "member_my_account";
	}

	/*
	 * 마이 페이지 표시할 회원정보 조회 기능
	 */
	@RequestMapping("/my-account-info.do")
	public void selectLoginMember(HttpServletResponse response, HttpSession session) throws IOException {
		response.setContentType("text/html;charset=utf-8;");
		String id = (String) session.getAttribute("id");
		JSONObject obj = null;

		MemberDTO dto = memberService.selectLoginMember(id);

		obj = new JSONObject(dto);

		response.getWriter().write(obj.toString());
	}

	/*
	 * 회원정보 수정 기능
	 */
	@RequestMapping("/member-update.do")
	public String updateMember(MemberDTO memberDto) {
		int result = 0;

		result = memberService.updateMember(memberDto);

		return String.valueOf(result);
	}

	/*
	 * 오시는 길 페이지 이동
	 */
	@RequestMapping("/contact.do")
	public String contact_page() {

		return "contact";
	}

	/*
	 * 관리자 페이지 이동
	 */
	@RequestMapping("/manager.do")
	public String manager_page(Model model) {
		return "manager";
	}

	/*
	 * 관리자 로그인 기능
	 */
	@RequestMapping("/manager-login.do")
	public String manager_login(String managerId, String pw, HttpSession session) {
		String id = memberService.managerLogin(managerId, pw);

		System.out.println(id);
		if (id != null) {
			session.setAttribute("mLogin", true);
			session.setAttribute("managerId", id);
			return "redirect:/member-list.do";
		} else {
			session.setAttribute("mLogin", false);
			return "redirect:/manager.do";
		}

	}

	/*
	 * 관리자 로그아웃
	 */
	@RequestMapping("/manager-logout.do")
	public String manager_logout(HttpSession session) {
		session.invalidate();

		return "redirect:/manager.do";
	}

	/*
	 * 관리자 게시판 - 공지사항 글쓰기 페이지 이동
	 */
	@RequestMapping("/manager_notice_write.do")
	public String manager_notice_write(HttpSession session) {
		String noticeno = boardService.selectNoticeNo();
		System.out.println("manager_noticeno : " + noticeno);

		session.setAttribute("noticeno", noticeno);

		return "manager_notice_write";
	}

	/*
	 * 관리자 게시판 - 공지사항 글쓰기
	 */
	@RequestMapping("/managerBoardWrite.do")
	public String boardWrite(NoticeDTO dto, MultipartHttpServletRequest request, HttpSession session) {
//		System.out.println(dto.stoString());
		String noticeno = (String) session.getAttribute("noticeno");

		boardService.insertNoticeBoard(dto, noticeno);

		// System.out.println("result : "+ result);

		// 파일 업로드

		// 저장할 경로
		String root = "c:\\fileUpload\\";
		File userRoot = new File(root);
		if (!userRoot.exists())
			userRoot.mkdirs();

		List<MultipartFile> fileList = request.getFiles("file");
		int i = 1;
		for (MultipartFile f : fileList) {
			String originalFileName = f.getOriginalFilename();
			if (f.getSize() == 0)
				continue;
			File uploadFile = new File(root + "\\" + originalFileName);
			boardService.insertNoticeFileList(new FileDTO(uploadFile, noticeno, i));
			i++;
			// 실제 전송하는 부분
			try {
				f.transferTo(uploadFile);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}

		}

		// forward 방식으로 하면
		// boardWrite.do가 남아있어 새로고침을 하면 글쓰기가 반복된다.
		return "redirect:/manager_notice_write.do";
	}

	/*
	 * 관리자 게시판 - 공지사항 글쓰기 파일 업로드
	 */
	@RequestMapping("/fileUpload.do")
	public void fileUpload(@RequestParam(value = "upload") MultipartFile fileload, HttpServletResponse response,
			HttpSession session) {
		// 서버에 파일을 저장할 때에는 파일명을 시간값으로 변경
		// DB에 저장할 때에는 원본 파일명과 시간값을 모두 저장
		// filename 취득
		String noticeno = (String) session.getAttribute("noticeno");
		System.out.println("noticeno : " + noticeno);
		String originFileName = fileload.getOriginalFilename();
		// upload 경로 설정
		String root = "c:\\fileUpload\\";

		File rootFile = new File(root);
		if (!rootFile.exists()) {
			rootFile.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy_MM_dd_hh_mm_ss");
		String date = sdf.format(Calendar.getInstance().getTime());
//		System.out.println("원본파일 : " + originFileName);
//		System.out.println(originFileName.indexOf("."));
//		System.out.println(originFileName.substring(originFileName.indexOf(".") + 1));

		String fileName = date + "_" + session.getAttribute("managerId")
				+ originFileName.substring(originFileName.indexOf("."));
		File file = new File(root + "\\" + fileName);

		String photono = boardService.uploadImage(file.getAbsolutePath(), noticeno);
		try {
			PrintWriter pw = response.getWriter();
			fileload.transferTo(file);
			JSONObject obj = new JSONObject();
			obj.put("uploaded", true);
			obj.put("url", "imageDown.do?photono=" + photono);
			pw.write(obj.toString());
		} catch (IOException e) {
			JSONObject obj = new JSONObject();
			obj.put("uploaded", false);
			JSONObject msg = new JSONObject();
			msg.put("message", "파일 업로드 중 에러 발생");
			obj.put("error", msg);
		}
	}

	/*
	 * 관리자 게시판 - 공지사항 글쓰기 이미지 업로드
	 */
	@RequestMapping("/imageDown.do")
	public void imageLoad(String photono, HttpServletResponse response) {

		String path = boardService.selectImageFile(photono);

		File file = new File(path);

		response.setHeader("Content-Disposition", "attachment;fileName=" + file.getName());
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.setContentLength((int) file.length());

		try {
			FileInputStream fis = new FileInputStream(file);

			BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
			byte[] buffer = new byte[1024 * 1024];

			while (true) {
				int size = fis.read(buffer);
				if (size == -1)
					break;
				bos.write(buffer, 0, size);
				bos.flush();
			}
			fis.close();
			bos.close();

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	/*
	 * 등록된 모든 회원 정보 조회 및 검색
	 */
	@RequestMapping("/member-list.do")
	public String selectAllMember(@RequestParam(name = "pageNo", defaultValue = "1") int pageNo, String search,
			String type, Model model) {
		List<MemberDTO> list = null;
		int count = 0;
		if (search == null || type == null || search.equals("") || type.equals("")) {
			list = memberService.selectMemberList(pageNo);
			model.addAttribute("member", list);

			count = memberService.selectMemberCount();
		} else {
			list = memberService.selectSearchMember(search, type, pageNo);
			model.addAttribute("search", search);
			model.addAttribute("type", type);
			model.addAttribute("member", list);

			count = memberService.selectSearchMemberCount(search, type);
		}

		PagingVO vo = new PagingVO(count, pageNo, 15, 5);
		model.addAttribute("paging", vo);

		return "manager_member";
	}

	/*
	 * 회원 목록에서 회원 별 구매 목록 조회
	 */
	@RequestMapping("/manager-member-detail.do")
	public String selectMemberOrderDetail(Model model, String memberId) {
		return "forward:/member-order-list.do?type=memberId&search=" + memberId;
	}

	/*
	 * 회원 정보 엑셀 파일 생성
	 */
	@RequestMapping("/member-list-excel.do")
	public String createMemberExcel(Model model, String search, String type) {
		MemberExcel memberExcel = new MemberExcel();

		List<MemberDTO> list = null;
		if (search == null || type == null || search.equals("") || type.equals("")) {
			list = memberService.selectMemberListExcel();
		} else {
			list = memberService.selectSearchMemberExcel(search, type);
		}

		memberExcel.memberExcelCreator(list);

		return "redirect:/member-list.do?search=" + search + "&type=" + type;
	}

	/*
	 * 회원 주문 내역 조회
	 */
	@RequestMapping("/member-order-list.do")
	public String selectProductList(@RequestParam(name = "pageNo", defaultValue = "1") int pageNo, String search,
			String type, Model model) {
		List<MemberDTO> list = null;
		int count = 0;

		if (search == null || type == null || search.equals("") || type.equals("")) {
			list = memberService.selectMemberOrderList(pageNo);
			model.addAttribute("product", list);

			count = memberService.selectMemberOrderCount();
		} else {
			list = memberService.selectSearchMemberOrder(pageNo, search, type);
			model.addAttribute("product", list);
			model.addAttribute("search", search);
			model.addAttribute("type", type);

			count = memberService.selectSearchMemberOrderCount(search, type);
		}

		PagingVO vo = new PagingVO(count, pageNo, 15, 5);
		model.addAttribute("paging", vo);

		return "manager_member_product";
	}

	/*
	 * 회원 주문 목록 검색
	 */
	@RequestMapping("/member-product-search.do")
	public String selectSearchMemberProduct(String search, String type, Model model, HttpServletResponse response)
			throws IOException {
		int pageNo = 1;
		List<MemberDTO> list = memberService.selectSearchMemberProduct(search, type, pageNo);
		model.addAttribute("member", list);

		int count = memberService.selectMemberCount();
		PagingVO vo = new PagingVO(count, pageNo, 15, 5);
		model.addAttribute("paging", vo);

		return "manager_member_product";
	}

	/*
	 * 회원 주문 목록 엑셀 파일 출력
	 */
	@RequestMapping("/member-ordre-list-excel.do")
	public String createMemberOrderExcel(Model model, String search, String type) {
		MemberExcel memberExcel = new MemberExcel();

		List<MemberOrderDTO> list = null;
		if (search == null || type == null || search.equals("") || type.equals("")) {
			list = memberService.selectMemberOrderListExcel();
		} else {
			list = memberService.selectSearchMemberOrderExcel(search, type);
		}

		memberExcel.memberOrderExcelCreator(list);

		return "redirect:/member-order-list.do?search=" + search + "&type=" + type;
	}

	/*
	 * 카카오 로그인 기능
	 */
	@RequestMapping("/kakaoLogin.do")
	public String kakaoLogin(String code, HttpSession session) {
		// 전달 받은 code를 사용해서 access_token 받기
		// login, id, name
		System.out.println(code);

		// session에 필수 값인 nickname이 없는 경우에만 로그인이 가능하게 한다.
		String access_token = kakaoService.getAccessToken(code);
		// System.out.println("###access_Token#### : " + access_token);

		HashMap<String, Object> userInfo = kakaoService.getUserInfo(access_token);
		String nickname = (String) userInfo.get("nickname");
		String email = (String) userInfo.get("email");

		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###email#### : " + userInfo.get("email"));

		session.setAttribute("login", true);
		session.setAttribute("name", nickname);
		session.setAttribute("id", email);

		session.setAttribute("kakaoToken", access_token);

		int result = memberService.insertKakaoLoginInfo(nickname, email);

		if (result == 0) {
			System.out.println("카카오 로그인 - 이미 등록된 아이디입니다.");
		}

		return "redirect:/";
	}

	// ------------------------------- 황상혁 ---------------------------------//

	// ------------------------------- 박홍희 ---------------------------------//

	@RequestMapping("/manager_productList.do")
	public String manegement_productList(Model model) {
		List<ProductDTO> productlist = productservice.selectProductList();
		System.out.println(productlist.toString());
		model.addAttribute("productlist", productlist);
		return "manager_productList";
	}

	@RequestMapping("/deleteproduct.do")
	public String deleteproduct(Model model, String productno) {
		System.out.println(productno + "12A3SD");
		String[] index = productno.split(",");
		productservice.deleteProduct(index);
		return "redirect:manager_productList.do";
	}

	@RequestMapping("/manager-insertproduct.do")
	public String manager_insertproduct(Model model, String productno) {

		return "manager_insertproduct";
	}

	@RequestMapping("/insertproduct.do")
	public String insertproduct(Model model, ProductDTO productdto, MultipartHttpServletRequest request) {
		System.out.println(productdto.toString());
		String productno = productservice.insertproduct(productdto);

		String root = "c:\\fileUpload\\";
		File userRoot = new File(root);
		if (!userRoot.exists())
			userRoot.mkdirs();

		List<MultipartFile> fileList = request.getFiles("file");
		int i = 1;
		for (MultipartFile f : fileList) {
			String originalFileName = f.getOriginalFilename();
			if (f.getSize() == 0)
				continue;
			File uploadFile = new File(root + "\\" + originalFileName);
			productservice.insertFileList(new FileDTO(uploadFile, productno, i));
			i++;
			try {
				f.transferTo(uploadFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return "redirect:manager_productList.do";
	}

	@RequestMapping("/productView.do")
	public String manager_productView(Model model, String productno) {

		ProductDTO dto = productservice.selectProductDTO(productno);
		List<FileDTO> Filelist = productservice.selectFilePath(productno);
		model.addAttribute("product", dto);
		model.addAttribute("Filepath", Filelist);
		System.out.println(Filelist);
		return "manager_productView";
	}

	@RequestMapping("fileDown.do")
	public void fileDown(int productphotono, String productno, HttpServletResponse response) throws IOException {
		System.out.println(productphotono + "ASdasd");
		String path = productservice.selectFile(productno, productphotono);
		File file = new File(path);
		response.setHeader("Content-Disposition", "attachement;fileName=" + file.getName());
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.setContentLength((int) file.length());
		FileInputStream fis = new FileInputStream(file);
		BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
		byte[] buffer = new byte[1024 * 1024];
		while (true) {
			int size = fis.read(buffer);
			if (size == -1)
				break;
			bos.write(buffer, 0, size);
			bos.flush();
		}
		bos.close();
		fis.close();
	}

	// ------------------------------- 박홍희 ---------------------------------//

	// ------------------------------- 심현성 ---------------------------------//

	@RequestMapping("/test.do")
	public String insertCartProduct(Model model, HttpSession session) {

		return "test";
	}

	@RequestMapping("/checkcartpop.do")
	public String checkcartpop(Model model, HttpSession session, CartDTO cdto) {

		return "checkcartpop";
	}

	@RequestMapping("/shopfullwidth.do")
	public String shopfullwidht(Model model, HttpSession session, CartDTO cdto) {

		return "shop-fullwidth";
	}

	@RequestMapping("/insert-cart.do")
	public ResponseEntity<CartDTO> insertCartProduct(String productname, Model model, HttpSession session,
			String memberId, CartDTO cdto) {
		memberId = (String) session.getAttribute("id");
		System.out.println(memberId);
		cdto.setMemberid(memberId);

		int count = productservice.selectCart(cdto);
		if (count != 0) {
			count = productservice.updateQuantity(cdto);

			return ResponseEntity.ok(cdto);
		}
		cdto = productservice.selectCartDTO(cdto);
		List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
		model.addAttribute("cartlist", cartlist);
		System.out.println("asdjlhbfsdlvjkn");
		System.out.println("ASdasdasdas" + cdto + "ASdasdasdas");
		return ResponseEntity.ok(cdto);
	}

	@RequestMapping("/shoping-cart.do")
	public String shoping_cart(Model model, HttpSession session, String productno, String memberId) {
		memberId = (String) session.getAttribute("id");
		System.out.println(memberId);
		List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
		System.out.println(cartlist + "cartlist");
		model.addAttribute("cartlist", cartlist);
		return "shoping-cart";
	}

	@RequestMapping("/deletecart.do")
	public String deleteCart(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response,
			String memberId, String productno) {
		memberId = (String) session.getAttribute("id");
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		System.out.println(memberId);
		map.put("productno", productno);
		map.put("memberId", memberId);
		System.out.println(memberId + productno + "2394082390");

		productservice.deleteCart(map);

		return "redirect:/shoping-cart.do";
	}

	@RequestMapping("/productdetailview.do")
	public String ProductDetailView(Model model, HttpSession session, HttpServletRequest request,
			HttpServletResponse response, String memberId, String productno) {

		ProductDTO productdto = productservice.ProductDetailView(productno);
		System.out.println(productdto);
		List<ColorDTO> colorlist = productservice.selectProductColorList(productno);
		List<SizesDTO> sizeslist = productservice.selectProductSizesList(productno);
		System.out.println(colorlist);
		model.addAttribute("productdto", productdto);
		model.addAttribute("colorlist", colorlist);
		model.addAttribute("sizeslist", sizeslist);

		return "product_detailview";

	}

	// ------------------------------- 심현성 ---------------------------------//

}