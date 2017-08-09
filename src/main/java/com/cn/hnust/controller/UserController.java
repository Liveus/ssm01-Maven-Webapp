package com.cn.hnust.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
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
	public void  login(HttpServletRequest request,HttpServletResponse response, ModelMap model) {
		User user = new User();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String piccode = (String) request.getSession().getAttribute("piccode");
		String checkcode = request.getParameter("checkcode");
		checkcode = checkcode.toUpperCase();
		JSONObject object = new JSONObject();
		response.setCharacterEncoding("utf-8");
		if(piccode.equals(checkcode)){
			try {
				password = MD5Util.encrypt(password);//MD5加密
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
				user.setUserpassword(""); //删除传输给前端用户信息中的密码项
				object.put("user", user);
				try {
					response.getWriter().write(object.toString());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return;
			}else{
				object.put("info", "用户名或者密码不正确");
				try {
					response.getWriter().write(object.toString());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return;
			}
		}else{
			object.put("info", "验证码不正确");
			try {
				response.getWriter().write(object.toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return;
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
	public String register(HttpServletRequest request,ModelMap model){
		User newuser = new User();
		newuser.setUseremail(request.getParameter("useremail"));
		newuser.setUsername(request.getParameter("username"));
		newuser.setUserpassword(request.getParameter("userpassword"));
		String piccode = (String) request.getSession().getAttribute("piccode");
		String checkcode = request.getParameter("checkcode");
		checkcode = checkcode.toUpperCase();
		if(piccode.equals(checkcode)){
			 try {
					String changedPwd = MD5Util.encrypt(newuser.getUserpassword());
					newuser.setUserpassword(changedPwd);
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        Byte a = 0;
		        newuser.setActive(a);
		        Calendar calendar = Calendar.getInstance();
				try {
					String key = MD5Util.encrypt(calendar.toString()+newuser.getUseremail());
					newuser.setKeyval(key);
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				model.addAttribute("user",newuser);
		        String info = this.userService.register(newuser);
		        //注册成功发送邮件
		        if(info.equals("注册成功")){
		            Sendmail send = new Sendmail(newuser);
		            //启动线程，线程启动之后就会执行run方法来发送邮件
		            send.start();
		            //Releaseverification releaseverification = new Releaseverification(newuser);
		            //releaseverification.run();
		            
		            
		            
		            
		            return "恭喜你注册成功，一封邮件已经发往你的邮箱，请点击邮箱中的连接进行验证！";
		        }else{
		        	return info;
		        }
		}else{
			return "验证码不正确";
		}
       
	}
	
	/**
	 * 邮箱验证
	 * @param request
	 * @return
	 */
	@RequestMapping("/verification")
	public String verification(HttpServletRequest request,ModelMap model){
		
		String email = request.getParameter("from");
		System.out.println("vvvvv:"+email);
		model.addAttribute("waitingEmial", email);
		String confirmation_token = request.getParameter("key");
		if(this.userService.userverificate(confirmation_token).equals("success")){
			return "index";
		}else{
			return "verificationFailure";
		}
	}
	
	/**
	 * Resend verification email
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/verificationAgain",produces = "text/json;charset=UTF-8")
	public String verificationAgain(HttpServletRequest request,ModelMap model){
		User user = new User();
		String waitingEmial = (String)model.get("waitingEmial");
		String waitingEmial2 = (String)request.getSession().getAttribute("waitingEmial");
		
		
		user.setUseremail(waitingEmial);
		user = this.userService.getUserByEmial(user);
		if(user!=null){
			Calendar calendar = Calendar.getInstance();
			String key = null;
			try {
				key = MD5Util.encrypt(calendar.toString()+user.getUseremail());
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			user.setKeyval(key);
            Sendmail send = new Sendmail(user);
            //启动线程，线程启动之后就会执行run方法来发送邮件
            send.start();
            this.userService.changeVal(user);
            return "邮件已重新发送，请点击邮箱中的连接进行验证！";
		}else{
			return "重新发送邮件失败";
		}
	}
	/**
	 * change user's keyvalue
	 * @param user
	 */
	@RequestMapping(value="/changeval")
	public void changeval(User user){
		System.out.println("a:"+user);
		System.out.println("b:"+userService);
		this.userService.changeVal(user);
	}
}