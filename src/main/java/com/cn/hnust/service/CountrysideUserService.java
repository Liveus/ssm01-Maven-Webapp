package com.cn.hnust.service;

import javax.servlet.http.HttpSession;

import com.cn.hnust.pojo.CountrysideUser;

public interface CountrysideUserService {
	public String getUser(CountrysideUser user,HttpSession session);
}
