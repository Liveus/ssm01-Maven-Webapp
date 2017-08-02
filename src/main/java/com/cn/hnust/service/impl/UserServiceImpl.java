package com.cn.hnust.service.impl;  
import javax.annotation.Resource;  
  
import org.springframework.stereotype.Service;  
  
import com.cn.hnust.dao.UserMapper;
import com.cn.hnust.pojo.User;  
import com.cn.hnust.service.UserService;  
  
@Service("userService")
public class UserServiceImpl implements UserService {  
    @Resource
    private UserMapper userDao;

	@Override
	public User getUserByPwd(User user) {
		// TODO Auto-generated method stub
		return this.userDao.selectByPwd(user);
	}

	@Override
	public int changePwd(User user) {
		// TODO Auto-generated method stub
		return this.userDao.updateByPrimaryKeySelective(user);
	}

	@Override
	public String register(User user) {
		// TODO Auto-generated method stub
		if(this.userDao.selectByEmail(user)!=null){
			return "������ע��";
		}else if(this.userDao.selectByUsername(user)!=null){
			return "�û�����ע��";
		}else if(this.userDao.insert(user)==1){
			return "ע��ɹ�";
		}else{
			return "ע��ʧ��";
		}
	}

	@Override
	public String userverificate(String keyval) {
		// TODO Auto-generated method stub
		User user = this.userDao.selectByKeyVal(keyval);
		if(user!=null){
			Byte a = 1;
			user.setActive(a);
			this.userDao.deleteKeyVal(user);
			this.userDao.updateActive(user);
			return "success";
		}else{
			return "faliure";
		}
	}
	
}