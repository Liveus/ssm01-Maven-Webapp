package com.cn.hnust.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.Hotel;
import com.cn.hnust.pojo.Restaurant;
import com.cn.hnust.service.HotelService;

@Controller
@RequestMapping(value="/Hotel")
public class HotelController {

	@Resource
	private HotelService hotelService;
	
	@ResponseBody
	@RequestMapping(value="/allCountryHotels", produces = "text/json;charset=UTF-8")
	public void getAllCountryHotels(HttpSession session,HttpServletResponse response){
		response.setContentType("text/json;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		CountryWithBLOBs bloBs = (CountryWithBLOBs)session.getAttribute("CountryWithBLOBs");
		List<Hotel> hotels = this.hotelService.getCountryHotels(bloBs);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("hotels", hotels);
		try {
			response.getWriter().print(jsonObject);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
