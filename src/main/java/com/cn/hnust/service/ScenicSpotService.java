package com.cn.hnust.service;

import java.util.List;

import com.cn.hnust.pojo.Country;
import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.ScenicSpot;

public interface ScenicSpotService {
	/**
	 * ��ȡ�������о���
	 * @return
	 */
	public List<ScenicSpot> getCountrysideSpots(CountryWithBLOBs country);
	
}
