package com.kh.landocProject.admin.product.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.product.model.service.AdminProductService;
import com.kh.landocProject.common.Pagination;
import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductPhoto;
import com.kh.landocProject.product.model.vo.ProductQna;

@Controller
public class ProductController {

	@Resource
	private AdminProductService adminProductImpl;
	private final String filePath = "C:\\lanCableDoctorProject\\files\\";
	
	@RequestMapping(value="productManage.do", method=RequestMethod.GET)
	public ModelAndView productManage(ModelAndView mv,
															@RequestParam int pageNo,
															@RequestParam int boardType,
															@RequestParam(required=false) String condition,
															@RequestParam(required=false) String keyword) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("categoryNo", 7);
		int listCount = 0;
		
		if( condition != null && keyword != null ) {
			param.put("condition", condition);
			param.put("keyword", keyword);
			listCount = adminProductImpl.getAdminListCount(param);
		}
		else {
			listCount = adminProductImpl.getAdminListCount(param);
		}
		PageInfo pageInfo = Pagination.getPageInfo(pageNo, listCount);
		List<Product> products = adminProductImpl.getAdminProducts(param, pageInfo);
		
		mv.addObject("page", pageInfo);
		mv.addObject("products", products);
		mv.addObject("boardType", boardType);
		mv.addObject("param", param);
		mv.setViewName("admin/product/productManage");
		return mv;
	}

	@RequestMapping("goProductInsert.do")
	public String goProductInsert() {
		return "admin/product/productInsert";
	}
	
	@RequestMapping(value="insertProduct.do", method=RequestMethod.POST)
	public String productInsert(ModelAndView mv,
											Product p,
											@RequestParam String volumeUnit,
											@RequestParam String volumeEx,
											@RequestParam("thumbnail") MultipartFile thumbnail,
											@RequestParam("detail") MultipartFile detail,
											RedirectAttributes ra) {
		p.setVolume(p.getVolume() + volumeUnit  + " * " + volumeEx);
		int result = adminProductImpl.insertProduct(p);
		
		if(result > 0) {
			HashMap<String, MultipartFile> photoMap = new HashMap<>();
			photoMap.put("thumbnail", thumbnail);
			photoMap.put("detail", detail);

			List<ProductPhoto> photoList = saveFiles(photoMap, p.getPdNo());
			for(ProductPhoto pt : photoList) {
				adminProductImpl.insertProductPhoto(pt);
			}
		}
		else {
			return "";
		}
		
		//addFlashAtt > POST
		ra.addAttribute("pageNo", 1);
		ra.addAttribute("boardType", 1);
		return "redirect:productManage.do";
	}

	private List<ProductPhoto> saveFiles(HashMap<String, MultipartFile> photoMap, int pdNo) {
		File folder = new File(filePath);
		if(!folder.exists())
			folder.mkdirs();

		List<ProductPhoto> photoList = new ArrayList<ProductPhoto>();
		
		for(String key : photoMap.keySet()) {
			ProductPhoto p = new ProductPhoto();
			if( key.equals("thumbnail") ) {
				p.setPhotoType(0);
				
				String fileName = "thumb" + 
						System.currentTimeMillis() + 
						photoMap.get(key).getOriginalFilename();
				p.setFileName(fileName);
			}
			else {
				p.setPhotoType(1);
				
				String fileName = "detail" + 
						System.currentTimeMillis() + 
						photoMap.get(key).getOriginalFilename();
				p.setFileName(fileName);
			}
			p.setFilePath(filePath);
			p.setPdNo(pdNo);
			String saveFile = filePath + p.getFileName();
			try {
				photoMap.get(key).transferTo(new File(saveFile));
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			photoList.add(p);
		}	// end of for
		
		return photoList;
	}

	@RequestMapping(value="deleteProduct.do", method=RequestMethod.POST)
	public String deleteProduct(@RequestParam int pdNo,
											RedirectAttributes ra) {
		List<String> fileNames = adminProductImpl.getProductFileNames(pdNo);
		productFileDetele(fileNames);
		int result = adminProductImpl.deleteProduct(pdNo);

		if(result > 0) {
			ra.addAttribute("pageNo", 1);
			ra.addAttribute("boardType", 1);
			return "redirect:productManage.do";
		}
		else {
			return "";
		}
	}
	
	private void productFileDetele(List<String> fileNames) {
		for(String s : fileNames) {
			File file = new File(filePath + s);
			if( file.exists() ) {
				file.delete();
			}
		}
	}

	@RequestMapping(value="updateProductView.do", method=RequestMethod.GET)
	public ModelAndView updateProductView(ModelAndView mv,
														@RequestParam int pdNo) {
		Product product = adminProductImpl.getProductDetail(pdNo);
		List<String> photos = adminProductImpl.getProductFileNames(pdNo);
		
		String volumeStr = product.getVolume();
		HashMap<String, String> splitVolume = splitVolume(volumeStr);
		
		for(String s : photos) {
			if( s.contains("thumb") ) {
				mv.addObject("thumbnail", s);
			}
			else {
				mv.addObject("detail", s);
			}
		}
		mv.addObject("product", product);
		mv.addObject("photos", photos);
		mv.addObject("volume", Integer.valueOf(splitVolume.get("volumeNo")));
		mv.addObject("volumeUnit", splitVolume.get("volumeUnit"));
		mv.addObject("volumeEx", splitVolume.get("volumeEx"));
		mv.setViewName("admin/product/productUpdateForm");
		return mv;
	}

	private HashMap<String, String> splitVolume(String volumeStr) {
		String volumeNo = "";
		String volumeUnit = "";
		String volumeEx = "";
		
		for(int i = 0; i < volumeStr.length(); i++) {
			char x = volumeStr.charAt(i);
			
			if(0 <= i && i <= 7) {
				if( '0' <= x && x <= '9' ) {
					volumeNo += x;
				}
				else if( x == ' ' || x == '*' ) {
					continue;
				}
				else {
					volumeUnit += x;
				}
			}
			else {
				volumeEx += x;
			}
		}
		
		HashMap<String, String> splitVolume = new HashMap<String, String>();
		splitVolume.put("volumeNo", volumeNo);
		splitVolume.put("volumeUnit", volumeUnit);
		splitVolume.put("volumeEx", volumeEx);
		
		return splitVolume;
	}

	@RequestMapping(value="updateProduct.do", method=RequestMethod.POST)
	public String updateProduct(ModelAndView mv,
											Product p,
											@RequestParam String volumeUnit,
											@RequestParam String volumeEx,
											@RequestParam(value="thumbnail", required=false) MultipartFile thumbnail,
											@RequestParam(value="detail", required=false) MultipartFile detail,
											RedirectAttributes ra) {
		int updateNewPhoto = 0, updateProduct = 0;
		
		p.setVolume(p.getVolume() + volumeUnit  + " * " + volumeEx);
		updateProduct = adminProductImpl.updateProduct(p);
		
		if(updateProduct < 0) {
			return "";
		}
		if( !thumbnail.getOriginalFilename().equals("") && !detail.getOriginalFilename().equals("") ) {
			List<String> fileNames = adminProductImpl.getProductFileNames(p.getPdNo());
			productFileDetele(fileNames);
			
			HashMap<String, MultipartFile> photoMap = new HashMap<>();
			photoMap.put("thumbnail", thumbnail);
			photoMap.put("detail", detail);

			List<ProductPhoto> photos = saveFiles(photoMap, p.getPdNo());
			updateNewPhoto = adminProductImpl.updateProductPhoto(photos);
		}
		
		ra.addAttribute("pageNo", 1);
		ra.addAttribute("boardType", 1);
		return "redirect:productManage.do";
	}
		
	@RequestMapping(value="productQnaManage.do", method=RequestMethod.GET)
	public ModelAndView productQnaManage(ModelAndView mv,
																@RequestParam int boardType,
																@RequestParam int pageNo,
																@RequestParam(required=false) String showNoAnswer) {
		HashMap<String, Object> param = new HashMap<>();
		if(showNoAnswer != null && showNoAnswer.equals("y")) {
			param.put("showNoAnswer", showNoAnswer);
		}
		else {
			param.put("showNoAnswer", "n");
		}
		int listCount = adminProductImpl.getAdminQnaCount(param);
		PageInfo pageInfo = Pagination.getPageInfo(pageNo, listCount);
		List<ProductQna> qnas = adminProductImpl.getAdminQnas(param, pageInfo);
		
		mv.addObject("showNoAnswer", showNoAnswer);
		mv.addObject("page", pageInfo);
		mv.addObject("qnas", qnas);
		mv.addObject("boardType", boardType);
		mv.setViewName("admin/productQna/productQnaManage");
		return mv;
	}
	
	@RequestMapping(value="productQnaSearch.do", method=RequestMethod.GET)
	public ModelAndView productQnaSearch(ModelAndView mv,
																@RequestParam int boardType,
																@RequestParam int pageNo,
																@RequestParam int condition,
																@RequestParam String keyword,
																@RequestParam(required=false) String showNoAnswer) {
		
		HashMap<String, Object> param = new HashMap<>();
		param.put("condition", condition);
		param.put("keyword", keyword);
		if(showNoAnswer != null && showNoAnswer.equals("y")) {
			param.put("showNoAnswer", showNoAnswer);
		}
		int listCount = adminProductImpl.getAdminQnaSearchCount(param);
		PageInfo pageInfo = Pagination.getPageInfo(pageNo, listCount);
		List<ProductQna> qnas = adminProductImpl.getAdminSearchQnas(pageInfo, param);
		
		mv.addObject("param", param);
		mv.addObject("boardType", boardType);
		mv.addObject("pageNo", pageNo);
		mv.addObject("qnas", qnas);
		mv.setViewName("admin/productQna/productQnaManage");
		return mv;
	}

	@RequestMapping(value="productQnaDetail.do", method=RequestMethod.GET)
	public ModelAndView productQnaDetail(ModelAndView mv,
															@RequestParam int pdqNo) {
		ProductQna qna = adminProductImpl.getAdminQna(pdqNo);
		
		mv.addObject("qna", qna);
		mv.setViewName("admin/productQna/productQnaDetail");
		return mv;
	}
	
	@RequestMapping(value="answerQna.do", method=RequestMethod.POST)
	public String answerProductQna(@RequestParam String answerContent,
																@RequestParam int pdqNo,
																RedirectAttributes ra) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("pdqNo", pdqNo);
		param.put("answerContent", answerContent);
		
		int result = adminProductImpl.answerQna(param);
		
		if(result > 0) {
			ra.addAttribute("boardType", 1);
			ra.addAttribute("pageNo", 1);
			return "redirect:productQnaManage.do";			
		}
		else {
			return "";
		}
	}
	
	@RequestMapping(value="deleteQnA.do", method=RequestMethod.POST)
	public String deleteQnA(@RequestParam int pdqNo,
										RedirectAttributes ra) {
		int result = adminProductImpl.deleteQnA(pdqNo);
		
		if(result > 0) {
			ra.addAttribute("pageNo", 1);
			ra.addAttribute("boardType", 1);
			return "redirect:productQnaManage.do";
		}
		else {
			return "";
		}
	}
	
	@RequestMapping(value="detailProductView.do", method=RequestMethod.GET)
	public ModelAndView detailProductView(ModelAndView mv,
															@RequestParam int pdNo) {
		Product product = adminProductImpl.getProductDetail(pdNo);
		List<String> photos = adminProductImpl.getProductFileNames(pdNo);
		
		String volumeStr = product.getVolume();
		HashMap<String, String> splitVolume = splitVolume(volumeStr);
		
		mv.addObject("volume", Integer.valueOf(splitVolume.get("volumeNo")));
		mv.addObject("volumeUnit", splitVolume.get("volumeUnit"));
		mv.addObject("volumeEx", splitVolume.get("volumeEx"));
		mv.addObject("product", product);
		for(String s : photos) {
			if( s.contains("thumb") ) {
				mv.addObject("thumbnail", s);
			}
			else {
				mv.addObject("detail", s);
			}
		}
		mv.setViewName("admin/product/productDetail");
		return mv;
	}

	@RequestMapping(value="productManageSearch.do", method=RequestMethod.GET)
	public ModelAndView productManageSearch(@RequestParam int condition,
																	@RequestParam String keyword,
																	@RequestParam int pageNo,
																	@RequestParam int boardType,
																	ModelAndView mv) {
		HashMap<String, Object> param = new HashMap<>();
		param.put("condition", condition);
		param.put("keyword", keyword.replaceAll("\\p{Z}", ""));
		
		int listCount = adminProductImpl.getAdminListCount(param);
		PageInfo pageInfo = Pagination.getPageInfo(pageNo, listCount);
		List<Product> products = adminProductImpl.getAdminProducts(param, pageInfo);
		
		mv.addObject("page", pageInfo);
		mv.addObject("boardType", boardType);
		mv.addObject("products", products);
		mv.addObject("param", param);
		mv.setViewName("admin/product/productManage");
		return mv;
	}
}





















