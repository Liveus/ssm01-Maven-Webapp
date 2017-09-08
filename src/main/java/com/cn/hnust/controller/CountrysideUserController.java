package com.cn.hnust.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.CountrysideUser;
import com.cn.hnust.service.CountryService;
import com.cn.hnust.service.CountrysideUserService;
@Controller
@RequestMapping(value="/CountrysideUser")
public class CountrysideUserController {
	@Resource
	private CountrysideUserService countrysideUserService;
	@Resource
	private CountryService countryService;
	
	@ResponseBody
	@RequestMapping(value="/login",produces = "text/json;charset=UTF-8")
	public String login(HttpServletRequest request,HttpServletResponse response){
		CountrysideUser user = new CountrysideUser();
		String piccode = (String) request.getSession().getAttribute("piccode");
		StringBuffer requestBody;
		String checkcode = "0";
		try {
			BufferedReader reader = request.getReader();
			String input = null;
			requestBody = new StringBuffer();
			while ((input = reader.readLine()) != null) {
				requestBody.append(input);
				JSONObject jsonObject = new JSONObject(input);
				user.setName(jsonObject.get("name").toString());
				user.setName(jsonObject.get("password").toString());
				checkcode = jsonObject.get("checkcode").toString();
			}
		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		checkcode = checkcode.toUpperCase();
		if(checkcode.equals(piccode)){
			return this.countrysideUserService.getUser(user, request.getSession());
		}else{
			return "验证码不正确";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/info",produces = "text/json;charset=UTF-8")
	public void userinfo(HttpSession session,HttpServletResponse response){
		response.setContentType("text/json;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		CountrysideUser user = (CountrysideUser)session.getAttribute("countrysideUser");
		JSONObject jsonObject = new JSONObject();
		List<CountrysideUser> countrysideUsers = new ArrayList<CountrysideUser>();
		countrysideUsers.add(user);
		user.setUserpassword(null);
		jsonObject.put("countrysideUser", countrysideUsers);
		try {
			response.getWriter().print(jsonObject);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/login2",produces = "text/json;charset=UTF-8")
	public String Test(HttpServletRequest request,HttpServletResponse response){
		CountrysideUser countrysideUser = new CountrysideUser();
		countrysideUser.setName(request.getParameter("name"));
		countrysideUser.setUserpassword(request.getParameter("userpassword"));
		return this.countrysideUserService.getUser(countrysideUser, request.getSession());
	}
}
