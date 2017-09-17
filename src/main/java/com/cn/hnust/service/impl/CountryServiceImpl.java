package com.cn.hnust.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public List<CountryWithBLOBs> getCountrysByType(String type,Integer page,String content) {
		// TODO Auto-generated method stub
		CountryWithBLOBs bloBs = new CountryWithBLOBs();
		bloBs.setCountrytype(type);
		List<CountryWithBLOBs> list = new ArrayList<CountryWithBLOBs>();
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("start",page*8);
        map.put("pagesize",8);
        map.put("type",type);
        map.put("content",content);
        System.out.println("sss:"+content);
		list = this.countryMapper.getCountrysByType(map);
		return list;
	}

	@Override
	public List<CountryWithBLOBs> getAllCountry(Integer page) {
		// TODO Auto-generated method stub
		List<CountryWithBLOBs> bs = new ArrayList<CountryWithBLOBs>();
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("start",page*6);
        map.put("pagesize",6);
        bs = this.countryMapper.getCountryByPage(map);
		return bs;
	}

}
