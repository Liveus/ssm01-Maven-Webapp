package com.cn.hnust.service;

import java.util.List;

import com.cn.hnust.pojo.Country;
import com.cn.hnust.pojo.Hotel;
import com.cn.hnust.pojo.Restaurant;
import com.cn.hnust.pojo.ScenicSpot;

public interface AddExamineService {

	 List<Country> getCountryInExamine();
	 
	 List<Restaurant> getRestaurantInExamine();
	 
	 List<ScenicSpot> getScenicspotInExamine();
	 
	 List<Hotel> getHotelInExamine();
	 
	 Integer updateCountryInExamine(Integer id,Integer examine);
	 
	 Integer updateRestaurantInExamine(Integer id,Integer examine);
	 
	 Integer updateScenicspotInExamine(Integer id,Integer examine);
	 
	 Integer updateHotelInExamine(Integer id,Integer examine);
}
