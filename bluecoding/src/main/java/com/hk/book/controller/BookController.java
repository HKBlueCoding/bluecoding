package com.hk.book.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hk.book.service.BookService;
import com.hk.book.vo.BookVO;
import com.hk.favo.vo.FavoVO;
import com.hk.page.vo.PageVO;
import com.hk.review.vo.ReviewVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
		
	// 메인 페이지
	@GetMapping("/")
	public String home(Model model) {
		
		return "main";
	}

	@GetMapping("/list")
	public String bookList(Model model) {
		
		List<BookVO> bookList = bookService.listBook();
		model.addAttribute("bookList", bookList);
		logger.debug("[bookList] = " + bookList);
		
		return "bookList";
	}
	
	@GetMapping("/add")
	public String bookAdd() {
		
		return "bookAdd";
	}
	
	@PostMapping("/add")
	public String bookAddDone(Model model, @ModelAttribute BookVO bookVO, HttpServletResponse response) {
		logger.debug("[bookVO] = " + bookVO);
		response.setContentType("text/html; charset=UTF-8");

		int ret = bookService.addBook(bookVO);
		model.addAttribute("ret", ret);
		
		return "done/bookAddDone";
	}
	
	@GetMapping("/view")
	public String bookView(Model model, @RequestParam("bookNO") int bookNO) {
		
		Map<String, Object> map = bookService.bookOneList(bookNO);
		logger.debug("[map] = " + map);
		logger.debug("[bookNO] = " + bookNO);
		
		model.addAttribute("bookVO", map.get("bookVO"));
		model.addAttribute("reviewVO", map.get("reviewVO"));
		model.addAttribute("pageVO", map.get("pageVO"));
		
		return "bookView";
	}
	
	@GetMapping("/update")
	public String bookUpdate(Model model, @RequestParam("bookNO") int bookNO) {
		logger.debug("[bookNO11] = " + bookNO);
		
		BookVO bookVO = bookService.bookOne(bookNO);
		model.addAttribute("bookVO", bookVO);
		logger.debug("[bookVO11] = " + bookVO);
		
		return "bookUpdate";
	}
	
	@PostMapping("/update")
	public String bookUpdateDone(Model model, @ModelAttribute BookVO bookVO) {
		logger.debug("[bookVO22] = " + bookVO);

		int ret = bookService.updateBook(bookVO);
		model.addAttribute("ret", ret);
		logger.debug("[ret] = " + ret);

		model.addAttribute("bookNO", bookVO.getBookNO());
		
		return "done/bookUpdateDone";
	}
	
	@GetMapping("/view/add")
	public String bookViewAdd(@RequestParam("bookNO")int bookNO, Model model) {
		
		BookVO bookVO = bookService.bookOne(bookNO);
		model.addAttribute("bookVO", bookVO);
		return "bookViewAdd";
	}
	
	@PostMapping("/view/add")
	public String bookViewAddDone(Model model, @ModelAttribute PageVO pageVO, HttpServletResponse response) {
		logger.debug("[bookVO] = " + pageVO);
		response.setContentType("text/html; charset=UTF-8");

		int ret = bookService.addPage(pageVO);
		model.addAttribute("ret", ret);
		model.addAttribute("bookNO", pageVO.getBookNO());
		return "done/bookViewAddDone";
	}
	
	@GetMapping("/view/page")
	public String bookViewPageDone(Model model, @RequestParam("pageNO") int pageNO) {
		Map<String, Object> map = bookService.listPage(pageNO);
		logger.debug("[map] = " + map);
		logger.debug("[pageNO] = " + pageNO);
		
		model.addAttribute("pageVO", map.get("pageVO"));
		model.addAttribute("pageReplyVO", map.get("pageReplyVO"));
		
		return "bookViewPage";
	}
	
	@GetMapping("/view/update")
	public String bookViewUpdate(Model model, @RequestParam("pageNO") int pageNO) {
		logger.debug("[pageNO11] = " + pageNO);
		
		PageVO pageVO = bookService.bookPageOne(pageNO);
		model.addAttribute("pageVO", pageVO);
		logger.debug("[pageVO11] = " + pageVO);
		return "bookViewUpdate";
	}
	
	@PostMapping("/view/update")
	public String bookViewUpdateDone(Model model, @ModelAttribute PageVO pageVO) {
		logger.debug("[pageVO22] = " + pageVO);

		int ret = bookService.viewUpdateBook(pageVO);
		model.addAttribute("ret", ret);
		logger.debug("[ret] = " + ret);

		model.addAttribute("pageNO", pageVO.getPageNO());
		
		return "done/bookViewUpdateDone";
	}
	
	@PostMapping("/view/favo/add")
	public String favoAddDone(Model model, @ModelAttribute FavoVO favoVO) {
		logger.debug("[찜하기 favoVO] = " + favoVO);

		int ret = bookService.addFavo(favoVO);
		logger.debug("[ret] = " + ret);
		
		model.addAttribute("ret", ret);
		model.addAttribute("id", favoVO.getId());
		return "done/favoAddDone";
	}

	@RequestMapping(value = "/view/review/add", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody // --> ajax 사용할 때 사용
	public Map<String, Object> reviewAdd(@ModelAttribute ReviewVO reviewVO, Model model) { // --> ajax에서 보낸 data
		logger.debug("[리뷰의 reviewVO] = " + reviewVO);
		
		int ret = bookService.addReview(reviewVO);
		logger.debug("[ret] = " + ret);
		
		model.addAttribute("ret", ret);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("text", reviewVO.getRevText()); // 중복이면 true, 아니면 false라는 String반환
		map.put("ret", ret);
		return map;
	}	
	
	// [리뷰의 답글쓰기]
	@GetMapping("/view/review/reply/add")
	public String reviewReply(@ModelAttribute ReviewVO reviewVO, Model model) {
		
		model.addAttribute("reviewVO", reviewVO);
		return "reply/bookviewReply";
	}
	
	
}
