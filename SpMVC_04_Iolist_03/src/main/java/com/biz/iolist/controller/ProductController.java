package com.biz.iolist.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biz.iolist.domain.ProductDTO;
import com.biz.iolist.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value="/product")
@Controller
public class ProductController {

	ProductService pService;
	
	public  ModelAndView list(Model model) {
		
		ModelAndView mView = new ModelAndView();
		
		List<ProductDTO> proList = pService.getAllList();
		
		
		

			
		return null;
	}
}
