package com.cn.hnust.service;

import java.util.List;

import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.Hotel;

public interface HotelService {
	/**
	 * ��ȡһ��������е�ס��
	 * @param countryWithBLOBs
	 * @return
	 */
	public List<Hotel> getCountryHotels(CountryWithBLOBs countryWithBLOBs);
}