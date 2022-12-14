package com.project;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import com.project.app.MemberExcel;
import com.project.dto.CartDTO;
import com.project.dto.ColorDTO;
import com.project.dto.FileDTO;
import com.project.dto.FileImageDTO;
import com.project.dto.FileUploadDTO;
import com.project.dto.MemberDTO;
import com.project.dto.MemberOrderDTO;
import com.project.dto.NoticeDTO;
import com.project.dto.NoticeMainDTO;
import com.project.dto.NoticeReplyDTO;
import com.project.dto.ProductDTO;
import com.project.dto.QnADTO;
import com.project.dto.QnareplyDTO;
import com.project.dto.SizesDTO;
import com.project.dto.categoryDTO;
import com.project.service.BoardService;
import com.project.service.KakaoService;
import com.project.service.MemberService;
import com.project.service.NaverService;
import com.project.service.ProductService;
import com.project.service.QnAService;
import com.project.vo.PagingVO;

@Controller
public class MainController {
	private MemberService memberService;
	private ProductService productservice;
	private KakaoService kakaoService;
	private BoardService boardService;
	private QnAService qnaservice;
	private NaverService naverService;

	public MainController(MemberService memberService, ProductService productservice, KakaoService kakaoService,
			BoardService boardService, QnAService qnaservice, NaverService naverService) {
		this.memberService = memberService;
		this.productservice = productservice;
		this.kakaoService = kakaoService;
		this.boardService = boardService;
		this.qnaservice = qnaservice;
		this.naverService = naverService;
	}

	@RequestMapping("/tables.do")
	public String tables() {
		return "tables";
	}

	// ------------------------- ?????????, ?????????, ????????? ---------------------------//

	/*
	 * ?????? ????????? ??????
	 */
	@RequestMapping("/")
	public String main(Model model, HttpSession session) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		List<ProductDTO> productpreview = productservice.selectProductList();
		model.addAttribute("productpreview", productpreview);

		return "index";
	}

	/*
	 * index.do ?????? ????????? ??????
	 */
	@RequestMapping("/index.do")
	public String index(Model model, HttpSession session) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		List<ProductDTO> productpreview = productservice.selectProductList();
		model.addAttribute("productpreview", productpreview);

		return "index";
	}

	@RequestMapping("/category_detail_view.do")
	public String categoryDetailView(Model model, HttpSession session, String categoryno) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		List<ProductDTO> productlist = productservice.selectProductDetailList(categoryno); /* ??????????????? ????????? ?????? ?????? */
		System.out.println("asd123"+productlist);
		model.addAttribute("productlist", productlist);

		return "shop-fullwidth";
	}

	// ------------------------- ?????????, ?????????, ????????? ---------------------------//

	// ------------------------------- ????????? ---------------------------------//

	@RequestMapping("/shop-fullwidth.do")
	public String shopfullwidthnew(Model model, HttpSession session, String productno, ProductDTO productdto) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		List<ProductDTO> shopNewProductList = productservice.shopNewProductList(productno);
		model.addAttribute("shopNewProductList", shopNewProductList);
		return "shop-fullwidth-new";
	}
	@RequestMapping("/shop-fullwidth-best.do")
	public String shopfullwidthbest(Model model, HttpSession session, String productno, ProductDTO productdto,
			@RequestParam(name = "pageNo", defaultValue = "1") String pageNo) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);

		List<ProductDTO> shopBestProductList = productservice.shopBestProductList(productno);
		model.addAttribute("shopBestProductList", shopBestProductList);
		System.out.println(shopBestProductList);
		return "shop-fullwidth-best";
	}

	// ------------------------------- ????????? ---------------------------------//

	// ------------------------------- ????????? ---------------------------------//

	/*
	 * ????????? ????????? ??????
	 */
	@RequestMapping("/login-page.do")
	public String login_page(Model model, HttpSession session) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}
		
		return "login";
	}

	/*
	 * ???????????? ?????? ??????
	 */
	@RequestMapping("/member-update.do")
	public void updateMember(MemberDTO memberDto, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");

		int result = 0;

		result = memberService.updateMember(memberDto);
		response.getWriter().write("<script>alert('?????? ?????? ?????? ??????.');location.href='/';</script>");

	}

	/*
	 * ????????? ??????
	 */
	@RequestMapping("login.do")
	public void login(String id, String passwd, HttpSession session, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		MemberDTO dto = memberService.login(id, passwd);

		if (dto != null) {
			session.setAttribute("login", true);
			session.setAttribute("id", dto.getMemberId());
			session.setAttribute("name", dto.getMemberName());
			System.out.println("????????? ??????");
			response.getWriter().write("<script>location.href='/';</script>");
		} else {
			session.setAttribute("login", false);
			System.out.println("????????? ??????");
			response.getWriter().write("<script>alert('????????? ?????? ??????????????? ???????????????.');history.back();</script>");
		}
	}

	/*
	 * ???????????? ??????
	 */
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/";

	}

	/*
	 * ?????? ?????? ????????? ??????
	 */
	@RequestMapping("/register-page.do")
	public String register(Model model) {
		return "register";
	}

	/*
	 * ???????????? ??????
	 */
	@RequestMapping("/register.do")
	public void insertMember(MemberDTO dto, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		memberService.insertMember(dto);
		response.getWriter().write("<script>alert('???????????? ?????????????????????.');location.href='/';</script>");

	}

	/*
	 * ????????? ?????? ?????? ??????
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
	 * qna ????????? ??????!
	 */
	@RequestMapping("/qna_page.do")
	public String qna_page() {

		return "qna";
	}

	/*
	 * ?????? ????????? ??????
	 */
	@RequestMapping("/qnalist.do")
	public String qna_page(Model model) {
		return "qnalist";
	}

	/*
	 * ????????? ??????
	 */
	@RequestMapping("/boardWrite.do")
	public String boardWrite(QnADTO qnadto, MultipartHttpServletRequest request) throws UnsupportedEncodingException {
		// System.out.println(qnadto);
		int qno = qnaservice.insertBoard(qnadto);

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
			qnaservice.insertFileList(new FileImageDTO(uploadFile, qno, i));
			i++;
			try {
				// ????????? ??????
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
	 * qna ??????
	 */
	@RequestMapping("/Allqnalist.do")
	public String Allqnalist(HttpSession session, QnADTO qnadto, Model model) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		List<QnADTO> qnalist = qnaservice.Allqnalist();
		model.addAttribute("list", qnalist);

		return "qnalist";
	}

	/*
	 * qan ?????? ??????
	 */
	@RequestMapping("/qnaview_page.do")
	public String boardView(int qno, Model model, HttpSession session) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		QnADTO dto = qnaservice.serqnaview(String.valueOf(qno));
		List<QnareplyDTO> qnacomment = qnaservice.selectqnarepiyDTO(qno);
		model.addAttribute("qna", dto);
		model.addAttribute("qnacomment", qnacomment);
		return "qnaview";
	}

	/*
	 * ?????? ??????
	 */
	@RequestMapping("qnareply.do")
	public String qnareply(Model model, HttpSession session, QnareplyDTO qnareplydto) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		qnaservice.insertqnaDTO(qnareplydto);
		return "redirect:/qnaview_page.do?qno=" + qnareplydto.getQno();
	}

	/*
	 * ?????? ??????
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

	// ------------------------------- ????????? ---------------------------------//

	// ------------------------------- ????????? ---------------------------------//

	/*
	 * ???????????? ?????? ????????? ??????
	 */
	@RequestMapping("/about-page.do")
	public String about_page(Model model, HttpSession session) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		return "about";
	}

	/*
	 * ???????????? ?????? ?????? ??????
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

		} catch (Exception e) {
			json.put("message", "????????? ?????? ????????? ????????????.");
		}

		response.getWriter().write(json.toString());
	}

	/*
	 * ?????? ????????? ??????
	 */
	@RequestMapping("/cart_delete.do")
	public void deleteCartList(String productno, HttpServletResponse response, HttpSession session) throws IOException {
		String id = (String) session.getAttribute("id");

		int result = 0;
		result = boardService.deleteCartList(productno, id);

		if (result == 1) {
			response.getWriter().write("1");
		} else {
			response.getWriter().write("0");
		}

	}

	/*
	 * ???????????? ????????? ??????
	 */
	@RequestMapping("/notice.do")
	public String selectNoticeContent(Model model, HttpSession session,
			@RequestParam(name = "pageNo", defaultValue = "1") String pageNo) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		List<NoticeMainDTO> list = boardService.selectNoticeContent(pageNo);
		List<NoticeReplyDTO> reDto3 = boardService.selectNoticeRecent3Reply();
		List<NoticeDTO> reNotice3 = boardService.selectNoticeRecent3();

		model.addAttribute("list", list);
		model.addAttribute("recent3re", reDto3);
		model.addAttribute("recent3no", reNotice3);

		int count = boardService.selectNoticeCount();
		PagingVO vo = new PagingVO(count, Integer.parseInt(pageNo), 5, 5);
		model.addAttribute("paging", vo);

		return "notice";
	}

	/*
	 * ???????????? ??? ????????? ??????
	 */
	@RequestMapping("/notice_detail.do")
	public String selectNoticeDetail(Model model, String noticeno, HttpSession session) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		if (noticeno == null)
			noticeno = (String) session.getAttribute("noticeno");

		NoticeDTO dto = boardService.selectNoticeDetail(noticeno);
		List<FileUploadDTO> flist = boardService.selectFileList(noticeno);
		List<NoticeReplyDTO> reDto = boardService.selectNoticeReply(noticeno);
		List<NoticeReplyDTO> reDto3 = boardService.selectNoticeRecent3Reply();
		List<NoticeDTO> reNotice3 = boardService.selectNoticeRecent3();

		model.addAttribute("notice", dto);
		model.addAttribute("flist", flist);
		model.addAttribute("noticeRe", reDto);
		model.addAttribute("recent3re", reDto3);
		model.addAttribute("recent3no", reNotice3);
		session.setAttribute("noticeno", noticeno);

		return "notice_details";
	}
	
	/*
	 * ???????????? ?????? ????????????
	 */
	@RequestMapping("/noFileDown.do")
	public void noFileDown(int fno, String noticeno, HttpServletResponse response) throws IOException {
		System.out.println(noticeno);
		String path = boardService.selectNoFile(noticeno, fno);
		File file = new File(path);
		response.setHeader("Content-Disposition", "attachement;fileName=" + file.getName());
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.setContentLength((int) file.length());
		
		FileInputStream fis = new FileInputStream(file);
		BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
		byte[] buffer = new byte[1024 * 1024];
		while (true) {
			int size = fis.read(buffer);
			if (size == -1) break;
			bos.write(buffer, 0, size);
			bos.flush();
		}
		bos.close();
		fis.close();
	}
	
	/*
	 * ???????????? ??? ???????????? ??? ??? ??????
	 */
	@RequestMapping("/notice_updateView.do")
	public String selectNoticeView(Model model, String noticeno, HttpSession session) {
		NoticeDTO dto = boardService.selectNoticeDetail(noticeno);

		model.addAttribute("notice", dto);
		session.setAttribute("noticeno", noticeno);

		return "manager_notice_write_update";
	}

	/*
	 * ???????????? ??? ?????? ??????
	 */
	@RequestMapping("/noticeDelete.do")
	public String deleteNoticeContent(Model model, HttpSession session, String noticeno) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		// ????????? ?????? ??????
		// ?????? ????????? ??????(?????????) ????????????
		List<Integer> list = boardService.selectAllImgNo(noticeno);

		// db?????? ????????? ?????? ?????? ?????? ????????? ?????? ????????? ????????????
		ArrayList<String> fileList = new ArrayList<>();

		for (int i : list) {
			String fileLoc = boardService.selectNotUploadFileLoc(i);
			fileList.add(fileLoc);
		}

		// db?????? ????????? ??????????????? ?????? ??????
		if (!fileList.isEmpty()) {
			for (String s : fileList) {
				File file = new File(s);
				file.delete();
			}
		}

		// db - ????????? ?????? ??????
		boardService.deleteNoticeImgLoc(noticeno);

		// db - ?????? ??????
		int result = 0;
		result = boardService.deleteNoticeContent(noticeno);

		return "redirect:/notice.do";
	}

	/*
	 * ???????????? ??? ????????????
	 */
	@RequestMapping("/managerBoardUpdate.do")
	public String updateNoticeContent(Model model, HttpSession session, NoticeDTO notice,
			MultipartHttpServletRequest request) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		int result = 0;
		String noticeno = notice.getNoticeno();
		result = boardService.updateNoticeContent(notice);

		// ????????? ??????
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
			// ?????? ???????????? ??????
			try {
				f.transferTo(uploadFile);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}

		}

		return "redirect:/managerImageSort.do?noticeno=" + noticeno;
	}

	/*
	 * ?????? ????????? ??????
	 */
	@RequestMapping("/my-account.do")
	public String my_account_page(Model model, HttpSession session) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		return "my_account";
	}

	/*
	 * ?????? ????????? ????????? ???????????? ?????? ??????
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
	 * ????????? ??? ????????? ??????
	 */
	@RequestMapping("/contact.do")
	public String contact_page(Model model, HttpSession session) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

		return "contact";
	}

	/*
	 * ????????? ????????? ??????
	 */
	@RequestMapping("/manager.do")
	public String manager_page(Model model) {
		return "manager";
	}

	/*
	 * ????????? ????????? ??????
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
	 * ????????? ????????????
	 */
	@RequestMapping("/manager-logout.do")
	public String manager_logout(HttpSession session) {
		session.invalidate();

		return "redirect:/manager.do";
	}

	/*
	 * ????????? ????????? - ???????????? ????????? ????????? ??????
	 */
	@RequestMapping("/manager_notice_write.do")
	public String manager_notice_write(HttpSession session) {
		String noticeno = boardService.selectNoticeNo();

		session.setAttribute("noticeno", noticeno);

		return "manager_notice_write";
	}

	/*
	 * ????????? ????????? - ???????????? ?????????
	 */
	@RequestMapping("/managerBoardWrite.do")
	public String boardWrite(NoticeDTO dto, MultipartHttpServletRequest request, HttpSession session) {
		String noticeno = (String) session.getAttribute("noticeno");

		boardService.insertNoticeBoard(dto, noticeno);

		// ?????? ?????????
		// ????????? ??????
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
			// ?????? ???????????? ??????
			try {
				f.transferTo(uploadFile);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}

		}

		return "redirect:/managerImageSort.do?noticeno=" + noticeno;
	}

	/*
	 * ????????? - ???????????? ????????? ?????? ?????? ????????? ?????? ??????, ??????
	 */
	@RequestMapping("/managerImageSort.do")
	public String sortManagerImage(String noticeno) {
		NoticeDTO dto = boardService.selectNoticeDetail(noticeno);

		String imgSrc = "<img src=\"imageDown.do?photono=";
		String content = dto.getContent();
		int index = 0;
		ArrayList<String> imgTag = new ArrayList<>();

		// ??? ???????????? <img src...> ?????? ????????? arraylist??? ????????????
		while (true) {
			int indexNo = content.indexOf(imgSrc, index);
			if (indexNo == -1)
				break;
			int indexNoLast = content.indexOf(">", indexNo);

			String subStr = content.substring(indexNo, indexNoLast + 1);
			index = indexNoLast;

			imgTag.add(subStr);
		}

		int[] imgNo = new int[imgTag.size()];

		int indexInt = 0;
		// ??????????????? ??? ????????? ????????? ???????????? ????????? ??????
		for (String s : imgTag) {
			s = s.replaceAll("[^\\d]", "");
			imgNo[indexInt++] = Integer.parseInt(s);
		}

		// ?????? ????????? ??????(?????????) ????????????
		List<Integer> list = boardService.selectAllImgNo(noticeno);

		// remove ????????? Object ?????? ???????????? ?????? Integer?????? ????????? ?????????.
		// list?????? db??? ????????? ?????? ??????(?????????)?????? ????????? ?????? ?????? ??????(??? ?????? ?????????
		// ????????? ????????? ???????????? ??????)
		for (Integer i : imgNo) {
			list.remove(i);
		}

		// db?????? ????????? ?????? ?????? ?????? ????????? ?????? ????????? ????????????
		ArrayList<String> fileList = new ArrayList<>();

		for (int i : list) {
			String fileLoc = boardService.selectNotUploadFileLoc(i);
			fileList.add(fileLoc);
		}

		// db?????? ????????? ??????????????? ?????? ??????
		if (!fileList.isEmpty()) {
			for (String s : fileList) {
				File file = new File(s);
				file.delete();
			}
		}

		// db?????? ???????????? ?????? ?????? ??????
		if (!list.isEmpty()) {
			for (int i : list) {
				boardService.deleteNotUploadImg(i);
			}
		}

		// db?????? ?????? ??????
		return "redirect:/notice_detail.do?noticeno=" + noticeno;
	}

	/*
	 * ????????? ????????? - ???????????? ????????? ?????? ?????????
	 */
	@RequestMapping("/fileUpload.do")
	public void fileUpload(@RequestParam(value = "upload") MultipartFile fileload, HttpServletResponse response,
			HttpSession session) {
		// ????????? ????????? ????????? ????????? ???????????? ??????????????? ??????
		// DB??? ????????? ????????? ?????? ???????????? ???????????? ?????? ??????
		// filename ??????
		String noticeno = (String) session.getAttribute("noticeno");
//		System.out.println("noticeno : " + noticeno);
		String originFileName = fileload.getOriginalFilename();
		// upload ?????? ??????
		// String root = "c:\\fileUpload\\";
		String root = session.getServletContext().getRealPath("/") + "img\\notice\\";

		File rootFile = new File(root);
		if (!rootFile.exists()) {
			rootFile.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy_MM_dd_hh_mm_ss");
		String date = sdf.format(Calendar.getInstance().getTime());
//		System.out.println("???????????? : " + originFileName);
//		System.out.println(originFileName.indexOf("."));
//		System.out.println(originFileName.substring(originFileName.indexOf(".") + 1));

		String fileName = date + "_" + session.getAttribute("managerId")
				+ originFileName.substring(originFileName.indexOf("."));
		File file = new File(root + "\\" + fileName);

//		System.out.println("fileName : " + fileName);
		String photono = boardService.uploadImage(file.getAbsolutePath(), noticeno);
//		String photono = boardService.uploadImage("img/notice/"+fileName, noticeno);
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
			msg.put("message", "?????? ????????? ??? ?????? ??????");
			obj.put("error", msg);
		}
//		System.out.println("????????? ????????? ??????...");
	}

	/*
	 * ????????? ????????? - ???????????? ????????? ????????? ?????????
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
	 * ???????????? ?????? ??????
	 */
	@RequestMapping("/insertNoticeReply.do")
	public String insertNoticeReply(NoticeReplyDTO dto, HttpSession session) {
		String noticeno = (String) session.getAttribute("noticeno");

		int result = 0;
		dto.setNoticeno(noticeno);
//		System.out.println(dto);
		result = boardService.insertNoticeReply(dto);

		return "redirect:/notice_detail.do?noticeno=" + noticeno;
	}

	/*
	 * ???????????? ????????? ??????
	 */
	@RequestMapping("/insertNoticeReplyRe.do")
	public void insertNoticeReplyRe(NoticeReplyDTO dto, HttpServletResponse response) throws IOException {
//		System.out.println("data : " + dto);

		int result = 0;
		result = boardService.insertNoticeReplyRe(dto);

		if (result != 0) {
			response.getWriter().write(dto.getNoticeno());
//			System.out.println("????????? ?????? ??????");
		} else {
			response.getWriter().write(String.valueOf(0));
//			System.out.println("????????? ?????? ??????");
		}
	}

	/*
	 * ???????????? ?????? ??????
	 */
	@RequestMapping("/deleteReply.do")
	public String deleteReply(String replyno) {
		int result = 0;
		result = boardService.deleteNoticeReply(replyno);

		if (result == 1) {
//			System.out.println("?????? ?????? ??????");
			return "redirect:/notice_detail.do";
		} else {
//			System.out.println("?????? ?????? ??????");
			return "redirect:/notice_detail.do";
		}
	}

	/*
	 * ???????????? ?????? ??????
	 */
	@RequestMapping("/searchNotice.do")
	public String searchNotice(@RequestParam(name = "pageNo", defaultValue = "1") String pageNo, String search,
			Model model) {
		// ##
		List<NoticeMainDTO> list = boardService.selectNoticeSearch(pageNo, search);
		List<NoticeReplyDTO> reDto3 = boardService.selectNoticeRecent3Reply();
		List<NoticeDTO> reNotice3 = boardService.selectNoticeRecent3();

		model.addAttribute("recent3re", reDto3);
		model.addAttribute("recent3no", reNotice3);
		model.addAttribute("list", list);

		int count = boardService.selectNoticeSearchCount(search);
		PagingVO vo = new PagingVO(count, Integer.parseInt(pageNo), 5, 5);
		model.addAttribute("paging", vo);

		model.addAttribute("search", search);

		return "notice_search";
	}

	/*
	 * ????????? ?????? ?????? ?????? ?????? ??? ??????
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
	 * ?????? ???????????? ?????? ??? ?????? ?????? ??????
	 */
	@RequestMapping("/manager-member-detail.do")
	public String selectMemberOrderDetail(Model model, String memberId) {
		return "forward:/member-order-list.do?type=memberId&search=" + memberId;
	}

	/*
	 * ?????? ?????? ?????? ?????? ??????
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
	 * ?????? ?????? ?????? ??????
	 */
	@RequestMapping("/member-order-list.do")
	public String selectProductList(@RequestParam(name = "pageNo", defaultValue = "1") int pageNo, String search,
			String type, Model model, HttpSession session) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
		String memberId = (String) session.getAttribute("id");
		if (memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);

			int totalprice = 0;
			for (CartDTO d1 : cartlist) {

				totalprice += d1.getPrice() * d1.getQuantity();
			}
			model.addAttribute("totalprice", totalprice);
		}

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
	 * ?????? ?????? ?????? ??????
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
	 * ?????? ?????? ?????? ?????? ?????? ??????
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
	 * ????????? ????????? ??????
	 */
	@RequestMapping("/kakaoLogin.do")
	public String kakaoLogin(String code, HttpSession session) {
		// ?????? ?????? code??? ???????????? access_token ??????
		// login, id, name
		System.out.println(code);

		// session??? ?????? ?????? nickname??? ?????? ???????????? ???????????? ???????????? ??????.
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
			System.out.println("????????? ????????? - ?????? ????????? ??????????????????.");
		}

		return "redirect:/";
	}

	/*
	 * ????????? ?????????
	 */
	@RequestMapping("/naverLogin.do")
	public String naverLogin(String code, HttpSession session) throws UnsupportedEncodingException {
		System.out.println("naver-code : " + code);

		String access_token = naverService.getAccessToken(code);

		HashMap<String, Object> userInfo = naverService.getUserInfo(access_token);
		String nickname = (String) userInfo.get("nickname");
		String email = (String) userInfo.get("email");

		session.setAttribute("login", true);
		session.setAttribute("name", nickname);
		session.setAttribute("id", email);

		session.setAttribute("naverToken", access_token);

		System.out.println("nickname : " + nickname);
		System.out.println("email : " + email);

		int result = memberService.insertNaverLoginInfo(nickname, email);

		if (result == 0) {
			System.out.println("????????? ????????? - ?????? ????????? ??????????????????.");
		}

		return "redirect:/";

	}

	// ------------------------------- ????????? ---------------------------------//

	// ------------------------------- ????????? ---------------------------------//

	@RequestMapping("/manager_productList.do")
	public String manegement_productList(Model model, HttpSession session) {
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);

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
		List<ColorDTO> colorlist = productservice.selectColorList();
		model.addAttribute("colorlist", colorlist);
		List<SizesDTO> sizelist = productservice.selectSizeList();
		model.addAttribute("sizelist", sizelist);
		List<categoryDTO> categorylist = productservice.selectcategoryList();
		model.addAttribute("categorylist", categorylist);
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

	/*
	 * @RequestMapping("/productView.do") public String manager_productView(Model
	 * model, String productno) {
	 * 
	 * ProductDTO dto = productservice.selectProductDTO(productno); List<FileDTO>
	 * Filelist = productservice.selectFilePath(productno);
	 * model.addAttribute("product", dto); model.addAttribute("Filepath", Filelist);
	 * System.out.println(Filelist); return "manager_productView"; }
	 */

	@RequestMapping("/productView.do")
	public String manager_productView(Model model, String productno) {
		System.out.println(productno);
		ProductDTO dto = productservice.selectProductDTO(productno);
		System.out.println(dto);
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

	// ------------------------------- ????????? ---------------------------------//

	// ------------------------------- ????????? ---------------------------------//

	@RequestMapping("/test.do")
	public String insertCartProduct(Model model, HttpSession session) {

		return "test";
	}

	@RequestMapping("/checkcartpop.do")
	public String checkcartpop(Model model, HttpSession session, CartDTO cdto) {
		System.out.println("???");
		return "checkcartpop";
	}

	@RequestMapping("/shopfullwidth.do")
	public String shopfullwidht(Model model, HttpSession session, CartDTO cdto) {

		return "shop-fullwidth";
	}
	
	@RequestMapping("/insert-cart.do")
	public ResponseEntity<CartDTO> insertCartProduct(String productname, Model model, HttpSession session,
			String memberId, CartDTO cdto) {
		System.out.println(cdto);
		memberId = (String) session.getAttribute("id");
		cdto.setMemberid(memberId);
		int count = productservice.selectCart(cdto);
		System.out.println("123");
		if (count != 0) {
			System.out.println("0");
			int quantity = cdto.getQuantity();
			count = productservice.updateQuantity(cdto);
			System.out.println(cdto);
			CartDTO cdto1 = productservice.selectCartDTO(cdto);
			System.out.println("1");
//			System.out.println(cdto1);
			cdto1.setQuantity(quantity);
			return ResponseEntity.ok(cdto1);
		}
		System.out.println("0");
		System.out.println(cdto);
		cdto.setProductno(productservice.selectProductNo(cdto));
		System.out.println("1");
		productservice.insertCartProduct(cdto);
		System.out.println("2");
		CartDTO cdto1 = productservice.selectCartDTO(cdto);
		System.out.println("3");
		List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
		model.addAttribute("cartlist", cartlist);

		return ResponseEntity.ok(cdto1);
	}

	@RequestMapping("/shoping-cart.do")
	public String shoping_cart(Model model, HttpSession session, String productno, String memberId) {
		memberId = (String) session.getAttribute("id");
		List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
		int totalprice = 0;
		for(CartDTO d1 : cartlist ) {
			
			totalprice+=d1.getPrice()*d1.getQuantity();
		}
		model.addAttribute("totalprice", totalprice);
		
//		System.out.println(cartlist + "cartlist");
		model.addAttribute("cartlist", cartlist);
		model.addAttribute("totalprice", totalprice);
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		model.addAttribute("clist", categorylist);
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
			HttpServletResponse response, String memberId, String productno, String productname) {
		List<FileDTO> filelist = productservice.selectFilePath(productno);
		List<categoryDTO> categorylist = productservice.selectcategoryList(); /* ???????????? ?????? ???????????? ?????? */
		
		ProductDTO productdto = productservice.ProductDetailView(productname);
//		System.out.println(productdto + "sdf");
		List<ColorDTO> colorlist = productservice.selectProductColorList(productname);
		List<SizesDTO> sizeslist = productservice.selectProductSizesList(productname);
//		System.out.println(colorlist + "sdf");
		
		memberId = (String) session.getAttribute("id");
		if(memberId != null) {
			List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
			model.addAttribute("cartlist", cartlist);
			
			int totalprice = 0;
			for(CartDTO d1 : cartlist ) {
				
				totalprice+=d1.getPrice()*d1.getQuantity();
				
			}
			
			model.addAttribute("totalprice", totalprice);
		}
		memberId = (String) session.getAttribute("id");
		model.addAttribute("clist", categorylist);
		model.addAttribute("productdto", productdto);
		model.addAttribute("colorlist", colorlist);
		model.addAttribute("sizeslist", sizeslist);
		model.addAttribute("filelist", filelist);
		model.addAttribute("memberId", memberId);
		return "product_detailview";

	}

	
	
	  @RequestMapping("/checkout.do") public String checkout(Model model,String
	 memberId, HttpSession session,CartDTO cdto) { memberId = (String)
	  session.getAttribute("id"); System.out.println("asdasdjlnk"+cdto);
	  
	  List<CartDTO> cartlist = productservice.selectCartProduct(memberId);
	  MemberDTO mdto = memberService.selectMemberInfo(memberId);
	model.addAttribute("cartlist", cartlist); model.addAttribute("mdto", mdto);
	  // System.out.println(memberId + cartlist + "??????");
	 
	 return "checkout"; }
	 
	
	@RequestMapping("/selectproductsizelist.do")
	public ResponseEntity<List<SizesDTO>> selectproductsizelist(Model model, ProductDTO pdto) {
		System.out.println(pdto);
		List<SizesDTO> sdto = productservice.selectproductsizelist(pdto);
		System.out.println(sdto);
		return ResponseEntity.ok(sdto);
	}

	// ------------------------------- ????????? ---------------------------------//

}