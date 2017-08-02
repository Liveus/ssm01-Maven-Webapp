package com.cn.hnust.service;

import com.cn.hnust.pojo.CountryWithBLOBs;

public interface CountryService {
	/**
	 * get one country by id
	 * @param id
	 * @return
	 */
	public CountryWithBLOBs getOneCountryById(int id);
}
