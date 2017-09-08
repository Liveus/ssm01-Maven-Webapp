package com.cn.hnust.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.CountryMapper;
import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.CountrysideUser;
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

	@Override
	public List<CountryWithBLOBs> getUserCountrysides(HttpSession session) {
		// TODO Auto-generated method stub
		CountrysideUser user = (CountrysideUser)session.getAttribute("countrysideUser");
		String ids = user.getCountrysideId();
		String[] a = ids.split(",");
		List<Integer> integers = new ArrayList<Integer>();
		for (int i = 0; i < a.length; i++) {
			integers.add(Integer.valueOf(a[i]));
		}
		List<CountryWithBLOBs> bloBs = this.countryMapper.getUserCountrysides(integers);
		return bloBs;
	}

}
