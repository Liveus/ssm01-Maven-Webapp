package com.cn.hnust.service;

import java.util.List;

import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.Restaurant;

public interface RestaurantService {
	/**
	 * ��ȡ�������в͹�
	 * @return
	 */
	public List<Restaurant> getCountryRestaurant(CountryWithBLOBs countryWithBLOBs);
}
