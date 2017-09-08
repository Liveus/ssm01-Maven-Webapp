package com.cn.hnust.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.cn.hnust.pojo.CountryWithBLOBs;

public interface CountryService {
	/**
	 * get one country by id
	 * @param id
	 * @return
	 */
	public CountryWithBLOBs getOneCountryById(int id);
	
	/**
	 * 获取一个用户管理的所有与乡村
	 * @param session
	 * @return
	 */
	public List<CountryWithBLOBs> getUserCountrysides(HttpSession session);
}
