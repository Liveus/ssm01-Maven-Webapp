package com.cn.hnust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.ScenicSpotMapper;
import com.cn.hnust.pojo.Country;
import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.ScenicSpot;
import com.cn.hnust.service.ScenicSpotService;
@Service(value="/scenicSpotService")
public class ScenicSpotServiceImpl implements ScenicSpotService {

	@Resource
	private ScenicSpotMapper scenicSpotMapper;
	@Override
	public List<ScenicSpot> getCountrysideSpots(CountryWithBLOBs country) {
		// TODO Auto-generated method stub
		List<ScenicSpot> list = this.scenicSpotMapper.getCountrysideSopts(country);
		return list;
	}
	@Override
	public ScenicSpot getDetail(Integer id) {
		// TODO Auto-generated method stub
		ScenicSpot spot = this.scenicSpotMapper.selectByPrimaryKey(id);
		return spot;
	}

}
