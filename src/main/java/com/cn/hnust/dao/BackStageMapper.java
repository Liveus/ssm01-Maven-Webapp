package com.cn.hnust.dao;

import java.util.List;

import com.cn.hnust.pojo.Country;
import com.cn.hnust.pojo.Hotel;
import com.cn.hnust.pojo.Restaurant;
import com.cn.hnust.pojo.ScenicSpot;
import com.cn.hnust.pojo.User;

public interface BackStageMapper {
	//������
	 public Integer getUsercollByCountry(Integer id);
	    
	 List<Country> getSRHByCountry(Integer id);
	    
	 List<Restaurant> getRestaurantByCountry(Integer id);
	    
	 List<ScenicSpot> getScenicspotByCountry(Integer id);
	    
	 List<Hotel> getHotelByCountry(Integer id);
	    
	 public List<Object> getScenicspotcollByUser(List<Object> sids);
	    
	 public List<Integer> getRestaurantcollByUser(List<Integer> rids);
	    
	 public List<Object> getHotelcollByUser(List<Object> hids);
	 
	 //�û�����
	 List<User> getRecordtimeByuser();
	 
	 List<User> getUsernameByid(Integer userid);
	 
	 Integer getCollByUserid(Integer userid);
	 
	 List<ScenicSpot> getScenicspotBysid(Integer scenicspotid);
	 
	 Integer getAllUser();
	 
	 Integer getAllArticleByUser();
	 
	 //������
	 List<Country> getCountryInExamine();
	 
	 List<Restaurant> getRestaurantInExamine();
	 
	 List<ScenicSpot> getScenicspotInExamine();
	 
	 List<Hotel> getHotelInExamine();
	 
	 Integer updateCountryInExamine(Integer id,Integer examine);
	 
	 Integer updateRestaurantInExamine(Integer id,Integer examine);
	 
	 Integer updateScenicspotInExamine(Integer id,Integer examine);
	 
	 Integer updateHotelInExamine(Integer id,Integer examine);
	 
	 
	 
}
