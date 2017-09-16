package com.cn.hnust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.BackStageMapper;
import com.cn.hnust.pojo.Country;
import com.cn.hnust.pojo.Hotel;
import com.cn.hnust.pojo.Restaurant;
import com.cn.hnust.pojo.ScenicSpot;
import com.cn.hnust.service.AddExamineService;

@Service("addExamineService")
public class AddExamineServiceImpl implements AddExamineService {

	@Resource
	private BackStageMapper backStageMapper;
	
	@Override
	public List<Country> getCountryInExamine() {
	
		return this.backStageMapper.getCountryInExamine();
	}

	@Override
	public List<Restaurant> getRestaurantInExamine() {
		
		return this.backStageMapper.getRestaurantInExamine();
	}

	@Override
	public List<ScenicSpot> getScenicspotInExamine() {
		
		return this.backStageMapper.getScenicspotInExamine();
	}

	@Override
	public List<Hotel> getHotelInExamine() {
		
		return this.backStageMapper.getHotelInExamine();
	}

	@Override
	public Integer updateCountryInExamine(Integer id,Integer examine) {
	
		return this.backStageMapper.updateCountryInExamine(id, examine);
	}

	@Override
	public Integer updateRestaurantInExamine(Integer id,Integer examine) {
		
		return this.backStageMapper.updateRestaurantInExamine(id,examine);
	}

	@Override
	public Integer updateScenicspotInExamine(Integer id,Integer examine) {
		
		return this.backStageMapper.updateScenicspotInExamine(id, examine);
	}

	@Override
	public Integer updateHotelInExamine(Integer id,Integer examine) {
		
		return this.backStageMapper.updateHotelInExamine(id, examine);
	}

}
