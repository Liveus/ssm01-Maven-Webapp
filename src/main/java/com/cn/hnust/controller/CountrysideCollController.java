package com.cn.hnust.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.hnust.pojo.CountrysideColl;
import com.cn.hnust.pojo.User;
import com.cn.hnust.service.CountrysideCollService;

@Controller
@RequestMapping(value="/CountrysideColl")
public class CountrysideCollController {

	@Resource
	public CountrysideCollService countrysideCollService;
	
	@ResponseBody
	@RequestMapping(value="/allColls",produces = "text/json;charset=UTF-8")
	public void getUserColls(HttpSession session,HttpServletResponse response){
		User user = (User) session.getAttribute("user");
		List<CountrysideColl> colls = this.countrysideCollService.getUserColl(user);
		System.out.println("colls:"+colls.toString());
		response.setContentType("text/json;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("CountrysideColls", colls);
		try {
			response.getWriter().print(jsonObject);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/cancel",produces = "text/json;charset=UTF-8")
	public String cancel(@PathVariable("id") Integer id){
		if(this.countrysideCollService.cancelColl(id)==1){
			return "取消成功";
		}else{
			return "取消失败";
		}
	}
}
