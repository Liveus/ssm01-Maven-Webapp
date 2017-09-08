package com.cn.hnust.service.impl;

import java.security.NoSuchAlgorithmException;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.CountrysideUserMapper;
import com.cn.hnust.pojo.CountrysideUser;
import com.cn.hnust.service.CountrysideUserService;
import com.cn.hnust.util.MD5Util;
@Service("countrysideUserService")
public class CountrysideUserServiceImpl implements CountrysideUserService {

	@Resource
	private CountrysideUserMapper countrysideUserMapper;
	
	@Override
	public String getUser(CountrysideUser user,HttpSession session) {
		// TODO Auto-generated method stub
		CountrysideUser date = this.countrysideUserMapper.selectByName(user.getName());
		if(date.equals(null)){
			return "用户名不存在";
		}else{
			try {
				if(MD5Util.encrypt(user.getUserpassword()).equals(date.getUserpassword())){
					session.setAttribute("countrysideUser", date);
					return "登陆成功";
				}else{
					return "密码不正确";
				}
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "登录失败";
	}
	
}
