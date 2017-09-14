package com.cn.hnust.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.hnust.pojo.Article;
import com.cn.hnust.pojo.CountryComment;
import com.cn.hnust.pojo.CountryPhoto;
import com.cn.hnust.pojo.CountryVideo;
import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.CountrysideUser;
import com.cn.hnust.pojo.Hotel;
import com.cn.hnust.pojo.Restaurant;
import com.cn.hnust.pojo.ScenicSpot;
import com.cn.hnust.service.ArticleService;
import com.cn.hnust.service.CountryCommentService;
import com.cn.hnust.service.CountryPhotoService;
import com.cn.hnust.service.CountryService;
import com.cn.hnust.service.CountryVideoService;
import com.cn.hnust.service.HotelService;
import com.cn.hnust.service.RestaurantService;
import com.cn.hnust.service.ScenicSpotService;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;

@Api(value = "country")
@Controller
@RequestMapping("/country")
public class CountryController {
	@Resource
	private CountryService countryService;
	@Resource
	private CountryPhotoService countryPhotoService;
	@Resource
	private CountryVideoService countryVideoService;
	@Resource
	private ArticleService articleService;
	@Resource
	private RestaurantService restaurantService;
	@Resource
	private HotelService hotelService;
	@Resource
	private ScenicSpotService scenicSpotService;
	@Resource
	private CountryCommentService commentService;

	/*
	 * @Resource private SpecialtyService specialtyService;
	 */

	@ResponseBody
	@RequestMapping(value = "/oneCountryById", produces = "text/json;charset=UTF-8")
	public Map<String, Object> getOneCountryById(HttpServletRequest request) {
		int countryId = Integer.valueOf(request.getParameter("id"));
		Map<String, Object> map = new HashMap<String, Object>();
		CountryWithBLOBs countryWithBLOBs = this.countryService.getOneCountryById(countryId);
		List<CountryPhoto> countryPhotos = this.countryPhotoService.getCountryPhotos(countryWithBLOBs);
		List<CountryVideo> countryVideos = this.countryVideoService.getcountrysideVideos(countryWithBLOBs);
		// List<Specialty> specialties =
		// this.specialtyService.getCountrysideSpecialty(countryWithBLOBs);
		map.put("countryside", countryWithBLOBs);
		map.put("countryPhotos", countryPhotos);
		map.put("countryVideos", countryVideos);
		// map.put("specialties", specialties);
		return map;
	}

	/**
	 * 获取一个用户管理的所有乡村
	 * 
	 * @param httpSession
	 */
	@ResponseBody
	@RequestMapping(value = "/UserCountrysides", produces = "text/json;charset=UTF-8")
	public void getUserCountrysides(HttpServletResponse response, HttpSession session) {
		response.setContentType("text/json;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		/*
		 * List<CountryWithBLOBs> countryWithBLOBs =
		 * this.countryService.getUserCountrysides(httpSession); JSONObject
		 * object = new JSONObject(); object.put("countrysides",
		 * countryWithBLOBs); try { response.getWriter().print(object); } catch
		 * (IOException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 */
		CountrysideUser user = (CountrysideUser) session.getAttribute("countrysideUser");
		CountryWithBLOBs bloBs = this.countryService.getOneCountryById(Integer.valueOf(user.getCountrysideId()));
		session.setAttribute("CountryWithBLOBs", bloBs);
		JSONObject object = new JSONObject();
		List<CountryWithBLOBs> bs = new ArrayList<CountryWithBLOBs>();
		System.out.println("bs:" + bs.toString());
		bs.add(bloBs);
		object.put("CountryWithBLOBs", bs);
		try {
			response.getWriter().print(object);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 获取一个乡村的所有信息
	 * 
	 * @param request
	 * @param response
	 */
	@ApiOperation(value = "获取乡村所有信息", httpMethod = "GET", notes = "get country all info", response = List.class)
	@ResponseBody
	@RequestMapping(value = "/allInfo", produces = "text/json;charset=UTF-8")
	public void getAllInfo(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/json;charset=UTF-8");
		JSONObject object = new JSONObject();
		CountryWithBLOBs bloBs = new CountryWithBLOBs();
		/*
		 * StringBuffer requestBody; try { BufferedReader reader =
		 * request.getReader(); String input = null; requestBody = new
		 * StringBuffer(); while ((input = reader.readLine()) != null) {
		 * requestBody.append(input); JSONObject jsonObject = new
		 * JSONObject(input);
		 * bloBs.setId(Integer.valueOf(jsonObject.get("id").toString())); } }
		 * catch (JSONException e1) { // TODO Auto-generated catch block
		 * e1.printStackTrace(); object.put("info", "获取信息失败"); } catch
		 * (IOException e1) { // TODO Auto-generated catch block
		 * e1.printStackTrace(); object.put("info", "获取信息失败"); }
		 */
		bloBs.setId(1);
		bloBs = this.countryService.getOneCountryById(bloBs.getId());
		List<CountryWithBLOBs> bloBs2 = new ArrayList<CountryWithBLOBs>();
		List<CountryPhoto> photos = this.countryPhotoService.getCountryPhotos(bloBs);
		List<CountryVideo> videos = this.countryVideoService.getcountrysideVideos(bloBs);
		List<Article> articles = this.articleService.getCountrysideArticles(bloBs);
		List<ScenicSpot> scenicSpots = this.scenicSpotService.getCountrysideSpots(bloBs);
		List<Hotel> hotels = this.hotelService.getCountryHotels(bloBs);
		List<Restaurant> restaurants = this.restaurantService.getCountryRestaurant(bloBs);
		List<CountryComment> comments = this.commentService.getCountryComments(bloBs);
		bloBs2.add(bloBs);
		object.put("info", "获取信息成功");
		object.put("country", bloBs2);
		object.put("photos", photos);
		object.put("videos", videos);
		object.put("articles", articles);
		object.put("scenicSpots", scenicSpots);
		object.put("hotels", hotels);
		object.put("restaurants", restaurants);
		object.put("comments", comments);
		try {
			response.getWriter().print(object);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@ApiOperation(value = "根据类别获取乡村", httpMethod = "GET", notes = "get user in session", response = List.class)
	@ResponseBody
	@RequestMapping(value = "/ByType", produces = "application/json;charset=UTF-8")
	public List<CountryWithBLOBs> getCountryByType(@RequestParam("countryType") String countrytype,
			@RequestParam("page") Integer page, @RequestParam("content") String content, HttpServletResponse response) {
		List<CountryWithBLOBs> bloBs = this.countryService.getCountrysByType(countrytype, page,content);
		if (bloBs.size() == 0) {
			return null;
		} else {
			return bloBs;
		}
	}

}
