package com.cn.hnust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.HotelMapper;
import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.Hotel;
import com.cn.hnust.service.HotelService;
@Service("HotelService")
public class HotelServiceImpl implements HotelService {

	@Resource
	private HotelMapper hotelmapper;
	@Override
	public List<Hotel> getCountryHotels(CountryWithBLOBs countryWithBLOBs) {
		// TODO Auto-generated method stub
		List<Hotel> hotels = this.hotelmapper.getCountryHotels(countryWithBLOBs);
		System.out.println("hotels:"+hotels.toString());
		return hotels;
	}

}