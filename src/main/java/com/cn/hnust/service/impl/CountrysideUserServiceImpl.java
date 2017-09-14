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
			return "�û���������";
		}else{
			try {
				if(MD5Util.encrypt(user.getUserpassword()).equals(date.getUserpassword())){
					session.setAttribute("countrysideUser", date);
					return "��½�ɹ�";
				}else{
					return "���벻��ȷ";
				}
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "��¼ʧ��";
	}

	@Override
	public String changeUserInfo(CountrysideUser user, HttpSession session) {
		// TODO Auto-generated method stub		
/*		CountrysideUser sessionUser = (CountrysideUser)session.getAttribute("countrysideUser");
		sessionUser.setName(user.getName());
		sessionUser.setUserphone(user.getUserphone());
		this.countrysideUserMapper.updateByPrimaryKeySelective(user);*/
		return "";
	}

	@Override
	public String changePwd(String pwd,String newpwd, HttpSession session) {
		// TODO Auto-generated method stub
		CountrysideUser sessionUser = (CountrysideUser)session.getAttribute("countrysideUser");
		try {
			if(MD5Util.encrypt(pwd).equals(sessionUser.getUserpassword())){
				sessionUser.setUserpassword(MD5Util.encrypt(newpwd));
				session.setAttribute("countrysideUser", sessionUser);
				this.countrysideUserMapper.updateByPrimaryKey(sessionUser);
				return "�޸ĳɹ�";
			}else{
				return "���������벻��ȷ";
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "�޸�ʧ��";
	}
	
}
