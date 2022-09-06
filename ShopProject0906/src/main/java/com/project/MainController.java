package com.project;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.Service.MemberService;
import com.project.Service.productService;
import com.project.dto.AdminDTO;
import com.project.dto.FileDTO;
import com.project.dto.MemberDTO;
import com.project.dto.ProductDTO;
import com.project.vo.PagingVO;

@Controller
public class MainController {
	private MemberService memberService;
	private productService productservice;

	public MainController(MemberService memberService, productService productservice) {
		super();
		this.memberService = memberService;
		this.productservice = productservice;
	}

	@RequestMapping("/")
	public String main(Model model) {
		return "index";
	}

	@RequestMapping("/home-02.do")
	public String home02(Model model) {
		return "home-02";
	}

	@RequestMapping("/blog.do")
	public String blog(Model model) {
		return "blog";
	}

	@RequestMapping("/blog-detail.do")
	public String blog_detail(Model model) {
		return "blog-detail";
	}

	@RequestMapping("/about.do")
	public String about(Model model) {
		return "about";
	}

	@RequestMapping("/contact.do")
	public String contact(Model model) {
		return "contact";
	}

	@RequestMapping("/product.do")
	public String product(Model model) {
		return "product";
	}

	@RequestMapping("/product-detail.do")
	public String product_detail(Model model) {
		return "product-detail";
	}

	@RequestMapping("/shoping-cart.do")
	public String shoping_cart(Model model) {
		return "shoping-cart";
	}

	/*
	 * ---------------------------------------------황상혁-----------------------------
	 * -----------
	 */

	/*
	 * 로그인 페이지 진입
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
	 * 마이 페이지 이동
	 */
	@RequestMapping("/my-account.do")
	public String my_account_page() {
		return "my-account";
	}

	/*
	 * 마이 페이지 미리 표시할 회원정보 조회 기능
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
		// result = 회원 정보 수정 결과값
		int result = 0;

		result = memberService.updateMember(memberDto);

		return String.valueOf(result);
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
	public String manager_login(String managerNo, String managerName, HttpSession session) {
		AdminDTO dto = memberService.managerLogin(managerNo, managerName);

		System.out.println(dto);
		if (dto != null) {
			session.setAttribute("mLogin", true);
			session.setAttribute("managerNo", dto.getManagerNo());
			session.setAttribute("managerName", dto.getManagerName());
			System.out.println("관리자 로그인 완료");
		} else {
			session.setAttribute("mLogin", false);
		}

		return "redirect:/manager.do";

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
	 * 관리자 회원가입 이동
	 */
	@RequestMapping("/manager-register-page.do")
	public String manager_register_page() {

		return "manager-register";
	}

	/*
	 * 관리자 회원 관리 이동
	 */
	@RequestMapping("/manager-member-page.do")
	public String manager_member_page() {

		return "manager-member";
	}

	/*
	 * 관리자 회원 등록
	 */
	@RequestMapping("/manager-register.do")
	public String insertManager(String managerNo, String managerName) {
		int result = 0;
		result = memberService.insertManager(managerNo, managerName);

		if (result != 0) {
			System.out.println("관리자가 등록 되었습니다.");
		} else {
			System.out.println("관리자 등록에 실패하였습니다.");
		}
		return "redirect:/manager.do";
	}

	/*
	 * 등록된 모든 회원 정보 조회
	 */
	@RequestMapping("/member-list.do")
	public String selectAllMember(@RequestParam(name = "pageNo", defaultValue = "1") int pageNo, Model model) {
		List<MemberDTO> list = memberService.selectMemberList(pageNo);
		model.addAttribute("member", list);

		int count = memberService.selectMemberCount();
		PagingVO vo = new PagingVO(count, pageNo, 15, 5);
		model.addAttribute("paging", vo);

		return "manager-member";
	}

	/*
	 * 회원 목록 검색
	 */
	@RequestMapping("/member-search.do")
	public String selectSearchMember(String search, String type, Model model, HttpServletResponse response)
			throws IOException {
		int pageNo = 1;
		List<MemberDTO> list = memberService.selectSearchMember(search, type, pageNo);
		model.addAttribute("member", list);

		int count = memberService.selectMemberCount();
		PagingVO vo = new PagingVO(count, pageNo, 15, 5);
		model.addAttribute("paging", vo);

		return "manager-member";
	}

	/*
	 * 등록된 회원 주문 정보 및 상세 정보 조회
	 */
	@RequestMapping("/member-list-detail.do")
	public String selectMemberInfo(String memberId, Model model) {
		List<ProductDTO> list = memberService.selectAllProduct(memberId);
		MemberDTO dto = memberService.selectLoginMember(memberId);

		if (list.isEmpty()) {
			model.addAttribute("message", "주문한 상품 정보가 없습니다.");
		} else {
			model.addAttribute("member", dto);
			model.addAttribute("list", list);
		}

		return "manager-member-detail";
	}

	/*
	 * 전체 주문 내역 조회
	 */
	@RequestMapping("/member-order-list.do")
	public String selectProductList(@RequestParam(name = "pageNo", defaultValue = "1") int pageNo, Model model) {
		List<MemberDTO> list = memberService.selectMemberOrderList(pageNo);
		model.addAttribute("product", list);

		int count = memberService.selectMemberOrderCount();
		PagingVO vo = new PagingVO(count, pageNo, 15, 5);
		model.addAttribute("paging", vo);

		return "manager-member-product";
	}

	/*
	 * ---------------------------------------------황상혁-----------------------------
	 * -----------
	 */

	/*-----------------------------------------------박홍희----------------------------------------*/

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

		return "manager-insertproduct";
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
		System.out.println(productphotono+"ASdasd");
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
	/*-----------------------------------------------박홍희----------------------------------------*/

}