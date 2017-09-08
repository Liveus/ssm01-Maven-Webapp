package com.cn.hnust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.RestaurantMapper;
import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.Restaurant;
import com.cn.hnust.service.RestaurantService;
@Service(value="/restaurantService")
public class RestaurantServiceImpl implements RestaurantService {

	@Resource
	private RestaurantMapper restaurantMapper;
	
	@Override
	public List<Restaurant> getCountryRestaurant(CountryWithBLOBs countryWithBLOBs) {
		// TODO Auto-generated method stub
		List<Restaurant> list = this.restaurantMapper.getCountryRestaurants(countryWithBLOBs);
		System.out.println("res:"+list);
		return list;
	}

}
