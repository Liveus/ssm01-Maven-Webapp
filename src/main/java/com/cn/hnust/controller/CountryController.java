package com.cn.hnust.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.service.CountryService;

@Controller
@RequestMapping("/country")
public class CountryController {
	@Resource
	private CountryService countryService;
	
	@ResponseBody
	@RequestMapping(value="/oneCountryById")
	public CountryWithBLOBs getOneCountryById(HttpServletRequest request){
		int countryId = Integer.valueOf(request.getParameter("id"));
		return this.countryService.getOneCountryById(countryId);
	}
}
