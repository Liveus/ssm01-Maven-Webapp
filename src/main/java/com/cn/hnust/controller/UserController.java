package com.cn.hnust.controller;

import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cn.hnust.pojo.User;
import com.cn.hnust.service.UserService;
import com.cn.hnust.util.MD5Util;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UserController {
	@Resource
	private UserService userService;
	
	/**
	 * controller:user-login
	 * @param request
	 * @param model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/login")
	public User login(HttpServletRequest request, ModelMap model) {
		User user = new User();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String piccode = (String) request.getSession().getAttribute("piccode");
		String checkcode = request.getParameter("checkcode");
		checkcode = checkcode.toUpperCase();
		if(piccode.equals(checkcode)){
			try {
				//MD5加密
				password = MD5Util.encrypt(password);
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			user.setUsername(username);
			user.setUserpassword(password);
			user = this.userService.getUserByPwd(user);
			if(user!=null){
				model.addAttribute("user",user);
				System.out.println("success");
				return user;
			}else{
				System.out.println("faliure");
				return null;
			}
		}else{
			return null;
		}
	}
	
	/**
	 * controller:change user's pwd
	 * @param request
	 * @param map
	 * @param model
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/changepwd",produces = "text/json;charset=UTF-8")
	public String changepwd(HttpServletRequest request,Map<String, Object> map, Model model) {
		String oldpwd = request.getParameter("oldpwd");
		String newpwd = request.getParameter("newpwd");
		User user = (User)map.get("user");
		try {
			if(!MD5Util.encrypt(oldpwd).equals(user.getUserpassword())){
				newpwd = MD5Util.encrypt(newpwd);
				user.setUserpassword(newpwd);
				if(this.userService.changePwd(user)==1){
					return "修改密码成功";
				}else{
					return "修改失败";
				}
			}else{
				return "旧密码不正确";
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "修改失败";
	}
	
	/**
	 * controller:user-exit
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/exit")
	public ModelAndView exit(HttpSession session){
		session.removeAttribute("user");
		String viewName = "index";
		ModelAndView modelAndView =new ModelAndView(viewName);
		return modelAndView;
	}
	
	/**
	 * controller:user-registerPage
	 * @return
	 */
	@RequestMapping(value="/registerPage")
	public String registerPage(){
		return "register";
	}
	
	/**
	 * controller:user-register
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/register",produces = "text/json;charset=UTF-8")
	public String register(User user,ModelMap model){
        try {
			String changedPwd = MD5Util.encrypt(user.getUserpassword());
			user.setUserpassword(changedPwd);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        Byte a = 0;
        user.setActive(a);
        Calendar calendar = Calendar.getInstance();
		try {
			String key = MD5Util.encrypt(calendar.toString()+user.getUseremail());
			user.setKeyval(key);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("user",user);
        String info = this.userService.register(user);
        //注册成功发送邮件
        if(info.equals("注册成功")){
            Sendmail send = new Sendmail(user);
            //启动线程，线程启动之后就会执行run方法来发送邮件
            send.start();
            Releaseverification releaseverification = new Releaseverification(user);
            releaseverification.run();
            return "恭喜你注册成功，一封邮件已经发往你的邮箱，请点击邮箱中的连接进行验证！";
        }else{
        	return info;
        }
	}
	
	/**
	 * 邮箱验证
	 * @param request
	 * @return
	 */
	@RequestMapping("/verification")
	public String verification(HttpServletRequest request){
		String confirmation_token = request.getParameter("key");
		this.userService.userverificate(confirmation_token);
		if(this.userService.userverificate(confirmation_token).equals("success")){
			return "index";
		}else{
			return "index";
		}
	}
	
	/**
	 * Resend verification email
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/verificationAgain",produces = "text/json;charset=UTF-8")
	public String verificationAgain(Map<String, Object> map){
		User user = (User)map.get("user");
		if(user!=null){
            Sendmail send = new Sendmail(user);
            //启动线程，线程启动之后就会执行run方法来发送邮件
            send.start();
            return "邮件已重新发送，请点击邮箱中的连接进行验证！";
		}else{
			return "重新发送邮件失败";
		}

	}
}