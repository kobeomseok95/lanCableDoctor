package com.kh.landocProject.product.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.dmypage.model.vo.DrProductRecommends;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.product.model.service.ProductService;
import com.kh.landocProject.product.model.vo.DrComment;
import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductDetailPagination;
import com.kh.landocProject.product.model.vo.ProductPagination;
import com.kh.landocProject.product.model.vo.ProductPhoto;
import com.kh.landocProject.product.model.vo.ProductQna;
import com.kh.landocProject.product.model.vo.ProductReview;

@Controller
public class mainProductController {
	
	@Resource
	private ProductService productServiceImpl;
	
	@RequestMapping(value="productIndex.do", method=RequestMethod.GET)
	public ModelAndView productIndex(ModelAndView mv,
														@RequestParam int sortNo,
														@RequestParam int pageNo,
														@RequestParam int categoryNo) {
		HashMap<String, Integer> param = new HashMap<String, Integer>();
		param.put("categoryNo", categoryNo);
		int listCount = productServiceImpl.getListCount(param);
		
		ProductPagination page = ProductPagination.getPagination(pageNo, listCount);
		param.put("sortNo", sortNo);
		
		List<Product> products = productServiceImpl.getMainList(param, page);
		
		mv.addObject("products",products);
		mv.addObject("page", page);
		mv.addObject("sortNo", sortNo);
		mv.addObject("categoryNo", categoryNo);
		mv.addObject("listCount", listCount);
		mv.setViewName("product/productIndex");
		return mv;
	}
	
	@RequestMapping(value="productSearch.do", method=RequestMethod.GET)
	public ModelAndView productSearch(ModelAndView mv,
															@RequestParam String keyword,
															@RequestParam(required=false) Integer sortNo,
															@RequestParam(required=false) Integer pageNo) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("keyword", keyword);
		int listCount = productServiceImpl.getSearchCount(param);
		if(pageNo == null)	pageNo = 1;
		if(sortNo == null) sortNo = 1;
		param.put("pageNo", pageNo);
		param.put("sortNo", sortNo);
		
		ProductPagination page = ProductPagination.getPagination(pageNo, listCount);
		List<Product> products = productServiceImpl.getSearchProducts(param, page);
		
		mv.addObject("products", products);
		mv.addObject("page", page);
		mv.addObject("sortNo", sortNo);
		mv.addObject("listCount", listCount);
		mv.addObject("keyword", keyword);
		mv.setViewName("product/productSearch");
		return mv;
	}
	
	@RequestMapping(value="suggestProduct.do", method=RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> suggestProduct(String keyword) {
		HashMap<String, Object> returnValue = new HashMap<>();
		List<Product> suggestProducts = productServiceImpl.suggestProduct(keyword);
		
		if(suggestProducts.size() == 0) {
			returnValue.put("result", "not");
			return returnValue;
		}
		else {
			returnValue.put("result", "ok");
		}
		returnValue.put("suggestProducts", suggestProducts);
		return returnValue;
	}
	
	@RequestMapping(value="productDetail.do", method=RequestMethod.GET)
	public ModelAndView productDetail(ModelAndView mv,
										@RequestParam int pdNo, String msg) {
		int viewCount = productServiceImpl.updateViewCount(pdNo);
		if(viewCount <= 0) {
			return null;
		}
		
		Product product = productServiceImpl.getProductDetail(pdNo);
		List<ProductPhoto> photos = productServiceImpl.getProductPhotos(pdNo);
		
		int reviewCount = productServiceImpl.getReviewCount(pdNo);
		ProductDetailPagination reviewPage = ProductDetailPagination.getPagination(1, reviewCount);
		List<ProductReview> reviews = productServiceImpl.getProductReviews(pdNo, reviewPage);
		
		int qnaCount = productServiceImpl.getQnaCount(pdNo);
		ProductDetailPagination qnaPage = ProductDetailPagination.getPagination(1, qnaCount);
		List<ProductQna> qnas = productServiceImpl.getProductQnas(pdNo, qnaPage);
		
		int recommendCount = productServiceImpl.getRecommendCount(pdNo);
		ProductDetailPagination recommendPage = ProductDetailPagination.getPagination(1, recommendCount);
		List<DrProductRecommends> recommends = productServiceImpl.getProductRecommends(pdNo, recommendPage);
		
		mv.setViewName("product/productDetail");
		mv.addObject("product", product);
		mv.addObject("photos", photos);
		mv.addObject("reviews", reviews);
		mv.addObject("qnas", qnas);
		mv.addObject("recommends", recommends);
		mv.addObject("reviewPage", reviewPage);
		mv.addObject("qnaPage", qnaPage);
		mv.addObject("recommendPage", recommendPage);
		mv.addObject("reviewCount", reviewCount);
		mv.addObject("qnaCount", qnaCount);
		mv.addObject("recommendCount", recommendCount);
		mv.addObject("msg", msg);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "getAsyncRecommends.do", method=RequestMethod.GET)
	public HashMap<String, Object> getAsyncRecommends(@RequestParam int pdNo,
																							@RequestParam int pageNo){
		int recommendCount = productServiceImpl.getRecommendCount(pdNo);
		ProductDetailPagination page = ProductDetailPagination.getPagination(pageNo, recommendCount);
		List<DrProductRecommends> list = productServiceImpl.getProductRecommends(pdNo, page);
		HashMap<String, Object> data = new HashMap<>();
		data.put("page", page);
		data.put("list", list);
		data.put("recommendCount", recommendCount);
		return data;
	}
	
	@ResponseBody
	@RequestMapping(value = "getAsyncReviews.do", method=RequestMethod.GET)
	public HashMap<String, Object> getAsyncReviews(@RequestParam int pdNo,
																			@RequestParam int pageNo){
		int reviewCount = productServiceImpl.getReviewCount(pdNo);
		ProductDetailPagination page = ProductDetailPagination.getPagination(pageNo, reviewCount);
		List<ProductReview> list = productServiceImpl.getProductReviews(pdNo, page);
		HashMap<String, Object> data = new HashMap<>();
		data.put("page", page);
		data.put("list", list);
		data.put("reviewCount", reviewCount);
		return data;
	}
	
	@ResponseBody
	@RequestMapping(value = "getAsyncQnas.do", method=RequestMethod.GET)
	public HashMap<String, Object> getAsyncQnas(@RequestParam int pdNo,
																		@RequestParam int pageNo){
		int qnaCount = productServiceImpl.getQnaCount(pdNo);
		ProductDetailPagination page = ProductDetailPagination.getPagination(pageNo, qnaCount);
		List<ProductQna> list = productServiceImpl.getProductQnas(pdNo, page);
		HashMap<String, Object> data = new HashMap<>();
		data.put("page", page);
		data.put("list", list);
		data.put("qnaCount", qnaCount);
		return data;
	}
	
	@ResponseBody
	@RequestMapping(value="getpdqAnswer.do", method=RequestMethod.POST)
	public HashMap<String, Object> getpdqAnswer (@RequestParam int pdqNo,
																			@RequestParam String pdqPwd){
		ProductQna qna = productServiceImpl.getAnswer(pdqNo);
		HashMap<String, Object> data = new HashMap<>();
		if( (pdqPwd.equals("") || pdqPwd.equals(qna.getSecretPwd())) && qna.getStatus().equals("Y") ) {
			data.put("result", "ok");
			data.put("qna", qna);
			return data;
		}
		else if( (pdqPwd.equals("") || pdqPwd.equals(qna.getSecretPwd())) && qna.getStatus().equals("N") ) {
			data.put("result", "wait");
			return data;
		}
		else {
			data.put("result", "fail");
			return data;
		}
	}
	
	@ResponseBody
	@RequestMapping(value="insertProductQna.do", method=RequestMethod.POST)
	public String insertProductQna(ProductQna qna) {
		int result = 0;
		if( qna.getSecretPwd().equals("") ) {
			qna.setSecretStatus("N");
		}
		else {
			qna.setSecretStatus("Y");
		}
		
		result = productServiceImpl.insertQna(qna);

		if(result > 0) {
			return "ok";
		}
		else{
			return "fail";
		}
	}
	
	@RequestMapping(value="recommandView.do")
	public ModelAndView recommandView(ModelAndView mv, @RequestParam int categoryNo, HttpSession session) {
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo = loginDrClient.getDrNo();
		
		HashMap<String, Integer> param = new HashMap<String, Integer>();
		param.put("categoryNo", categoryNo);
		
		List<Product> proReco = productServiceImpl.proRecommand(param);
		
		System.out.println("proReco : " + proReco);
		
		if(proReco != null) {
			mv.addObject("proReco", proReco);
			mv.addObject("drNo", drNo);
			mv.setViewName("product/productRecommand");
		}else {
			System.out.println("못찾음;;");
		}
		
		return mv;
	}
	
	@RequestMapping(value="recommand.do")
	public ModelAndView recommand(ModelAndView mv,@RequestParam("drNo")List<String> drNo,
			@RequestParam("pdNo")List<Integer>  pdNo, @RequestParam("drComment")List<String> drComment) {
		System.out.println("drNo : " + drNo);
		System.out.println("pdNo : " + pdNo);
		System.out.println("drComment : " + drComment);
		int result = 0;
		HashMap<String,Object> reco = new HashMap<String,Object>();
		for(int i = 0; i < pdNo.size(); i++) {
			reco.put("drComment", drComment.get(i));
			reco.put("pdNo", pdNo.get(i));
			reco.put("drNo", drNo.get(i));
			result = productServiceImpl.recommendInsert(reco);
		}
		
		if(result > 0) {
			mv.setViewName("mypage/dMyPageWork");
			return mv;
		}
		
		return mv;
	}
}









