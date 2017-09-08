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
import com.cn.hnust.pojo.Restaurant;
import com.cn.hnust.service.RestaurantService;

@Controller
@RequestMapping(value="/restaurant")
public class RestaurantController {
	
	@Resource
	private RestaurantService restaurantService;
	
	/**
	 * 查找一个乡村的所有景点并返回给前台
	 * @param session
	 */
	@ResponseBody
	@RequestMapping(value="/allRestaurants", produces = "text/json;charset=UTF-8")
	public void getCountryRests(HttpSession session,HttpServletResponse response){
		response.setContentType("text/json;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		CountryWithBLOBs bloBs = (CountryWithBLOBs)session.getAttribute("CountryWithBLOBs");
		System.out.println("blogs:"+bloBs.toString());
		List<Restaurant> restaurants = this.restaurantService.getCountryRestaurant(bloBs);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("restaurants", restaurants);
		try {
			response.getWriter().print(jsonObject);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
