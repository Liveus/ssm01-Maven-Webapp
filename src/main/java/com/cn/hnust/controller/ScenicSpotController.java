package com.cn.hnust.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.CountrysideUser;
import com.cn.hnust.pojo.ScenicSpot;
import com.cn.hnust.service.ScenicSpotService;

@Controller
@RequestMapping(value="/ScenicSpot")
public class ScenicSpotController {
	@Resource 
	private ScenicSpotService scenicSpotService;
	
	@ResponseBody
	@RequestMapping(value="/getSpots", produces = "text/json;charset=UTF-8")
	public void getUser(HttpSession session,HttpServletResponse response){
		response.setContentType("text/json;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		CountryWithBLOBs bloBs = (CountryWithBLOBs)session.getAttribute("CountryWithBLOBs");
		/*this.scenicSpotService.getCountrysideSpots(user);*/
		List<ScenicSpot> spots = this.scenicSpotService.getCountrysideSpots(bloBs);
		JSONObject object = new JSONObject();
		object.put("ScenicSpots", spots);
		try {
			response.getWriter().print(object);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@RequestMapping("/newSpot")
	public void newSpot(HttpServletRequest request){
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		ScenicSpot spot = new ScenicSpot();
		List<String> pics = new ArrayList<String>();
		List<String> videos = new ArrayList<String>();
		String mainPic = new String();
		spot.setName(request.getParameter("name"));
		spot.setAddress(request.getParameter("location"));
		spot.setPrice(Integer.valueOf(request.getParameter("price")));
		spot.setSynosis(request.getParameter("jianjie"));
		Calendar date = Calendar.getInstance();
		spot.setCinformation(request.getParameter("phone"));
		 
		if (multipartResolver.isMultipart(request)) {
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			Iterator iter = multiRequest.getFileNames();
			while (iter.hasNext()) {
				MultipartFile file = multiRequest.getFile(iter.next().toString());
				if (file != null) {
					if(file.getOriginalFilename().equals("fengmian")){
						
					}else{
						
					}
					
/*					mainpic = file.getOriginalFilename();
					mainpic = date.getTime()+mainpic.substring(mainpic.lastIndexOf("."), mainpic.length());
					String path = "E:/springUpload/" + mainpic;
					try {
						file.transferTo(new File(path));
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}*/
				}
			}
		}
	}
}
