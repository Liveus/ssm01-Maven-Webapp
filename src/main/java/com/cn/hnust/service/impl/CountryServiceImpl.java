package com.cn.hnust.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.CountryMapper;
import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.service.CountryService;
@Service("countryService")
public class CountryServiceImpl implements CountryService {
    @Resource
    private CountryMapper countryMapper;
    
	@Override
	public CountryWithBLOBs getOneCountryById(int id) {
		// TODO Auto-generated method stub
		return this.countryMapper.selectByPrimaryKey(id);
	}

}
