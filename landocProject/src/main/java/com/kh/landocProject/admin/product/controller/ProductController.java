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
											@RequestParam("thumbnail") MultipartFile thumbnail,
											@RequestParam("detail") MultipartFile detail,
											RedirectAttributes ra) {
		p.setVolume(p.getVolume() + volumeUnit);
		int result = adminProductImpl.insertProduct(p);
		
		if(result > 0) {
			HashMap<String, MultipartFile> photoMap = new HashMap<>();
			photoMap.put("thumbnail", thumbnail);
			photoMap.put("detail", detail);
			//리스트로 받아 DB에 저장
			List<ProductPhoto> photoList = saveFiles(photoMap);
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

	private List<ProductPhoto> saveFiles(HashMap<String, MultipartFile> photoMap) {
		File folder = new File(filePath);
		if(!folder.exists())
			folder.mkdirs();

		List<ProductPhoto> photoList = new ArrayList<ProductPhoto>();
		
		for(String key : photoMap.keySet()) {
			ProductPhoto p = new ProductPhoto();
			if( key.equals("thumbnail") ) {
				p.setPhotoType(0);
				
				String fileName = "thumbnail" + 
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

	@RequestMapping("productDetail.do")
	public String productDetail() {
		return "admin/product/productDetail";
	}

}





















