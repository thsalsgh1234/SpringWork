package com.biz.iolist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.biz.iolist.domain.ProductDTO;
import com.biz.iolist.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/product")
@Controller
public class ProductController {
	
	@Autowired
	ProductService pService;

	
	// 상품이름을 전달 받아서 해당 상품을 검색하여 보여주기
	@RequestMapping(value = "/search",method=RequestMethod.GET)
	public String search(String strText, Model model) {
		
		List<ProductDTO> proList = pService.selectNameSearch(strText);
		
		model.addAttribute("PROLIST", proList);
		return "product/list-body";
	}
	
	@RequestMapping(value = "/list", method=RequestMethod.GET)
	public ModelAndView list() {
		
		ModelAndView mView = new ModelAndView();
		List<ProductDTO> pList = pService.allList();
		mView.setViewName("/product/list");
		mView.addObject("PROLIST", pList);
		return mView;	
	}
	
	
	@RequestMapping(value = "/view", method=RequestMethod.GET)
	public String view(String p_code, Model model) {
		ProductDTO prDto = pService.findByPCode(p_code);
		model.addAttribute("PRODUCT_DTO", prDto);
		
		return null;
	}
	
	@RequestMapping(value = "/insert", method=RequestMethod.GET)
	public String input(Model model) {
		
		return "product/input";		
	}
	
	
	@RequestMapping(value = "/insert", method=RequestMethod.POST)
	public String input(ProductDTO productDTO, Model model) {
		
		int ret = pService.insert(productDTO);
		return "redirect:/product/list";
	}
	
	@RequestMapping(value = "/delete", method=RequestMethod.GET)
	public String delete(String id, Model model) {
		
		int ret = pService.delete(id);
		
		return "redirect:/product/list";
	}
	
	@RequestMapping(value = "/update", method=RequestMethod.GET)
	public String update(String id, Model model) {
		ProductDTO dDTO = pService.findByPCode(id);
		model.addAttribute("DI",dDTO);
		return "product/input";
	}
	
	@RequestMapping(value = "/update", method=RequestMethod.POST)
	public String update(ProductDTO productDTO, Model model) {
		int ret = pService.update(productDTO);
		
		log.debug("거래처코드 : " + productDTO.toString());
		return "redirect:/product/view?p_code="+ productDTO.getP_code();
	}
}
