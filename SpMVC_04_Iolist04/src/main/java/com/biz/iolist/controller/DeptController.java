package com.biz.iolist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.biz.iolist.domain.DeptDTO;
import com.biz.iolist.service.DeptService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/dept")
@Controller
public class DeptController {

	
	@Autowired
	DeptService dService;
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String search(String strText,Model model) {
		
		List<DeptDTO> deptList = dService.selectNameSearch(strText);
		
		model.addAttribute("DEPTLIST",deptList);
		
		return "dept/list-body";
	}
	
	@RequestMapping(value ="/list", method = RequestMethod.GET)
	public ModelAndView list() {

		ModelAndView mView = new ModelAndView();
		List<DeptDTO> deptList = dService.getAllList();
		
		mView.setViewName("/dept/list");
		mView.addObject("DEPTLIST", deptList);
		
		return mView;
	}
	
	
	/*
	 * 입력 form을 보여주고 데이터를 입력 받도록 시작하는 절차
	 */
	@RequestMapping(value = "/insert", method=RequestMethod.GET)
	public String input(Model model) {
		
		return "dept/input";		
	}
	
	/*
	 * 입력 form에서 데이터를 입력하고 전송버튼을 클릭하면 데이터를 가지고 호출될 method
	 */
	@RequestMapping(value = "/insert", method=RequestMethod.POST)
	public String input(DeptDTO deptDTO , Model model) {
		
		log.debug("거래처정보" + deptDTO.toString());
		int ret = dService.insert(deptDTO);
		
		/*
		 * redirect: 문자열로 시작되는 return
		 * view(*.jsp, /dept/list.jsp)를 호출하라는 것이 아니고 http://localhost:8080/context/dept/list 명령을 실행하라
		 */
		return "redirect:/dept/list";
	}
	
	@RequestMapping(value = "/view", method=RequestMethod.GET)
	public String view(String d_code ,Model model) {
		log.debug("거래처코드 : " + d_code);
		DeptDTO dDTO = dService.findByDCode(d_code);
		model.addAttribute("DEPT_DTO", dDTO);
		return null;
	}
	
	@RequestMapping(value = "/delete", method=RequestMethod.GET)
	public String delete(String id, Model model) {
		
		int ret = dService.delete(id);
		
		return "redirect:/dept/list";
	}
	
	@RequestMapping(value = "/update", method=RequestMethod.GET)
	public String update(String id, Model model) {
		DeptDTO dDTO = dService.findByDCode(id);
		model.addAttribute("DI",dDTO);
		return "dept/input";
	}
	
	@RequestMapping(value = "/update", method=RequestMethod.POST)
	public String update(DeptDTO deptDTO, Model model) {
		int ret = dService.update(deptDTO);
		
		log.debug("거래처코드 : " + deptDTO.toString());
		return "redirect:/dept/view?d_code="+ deptDTO.getD_code();
	}
	
}
