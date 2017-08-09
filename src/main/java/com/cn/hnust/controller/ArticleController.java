package com.cn.hnust.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.cn.hnust.pojo.Article;
import com.cn.hnust.pojo.User;

@Controller
@RequestMapping(value = "/article")
public class ArticleController {

	@ResponseBody
	@RequestMapping(value = "/newArticle", produces = "text/json;charset=UTF-8")
	public String newArticle(HttpServletRequest request,Map<String, Object> map,ModelMap model,HttpSession session) {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		User user = (User)session.getAttribute("user");
		String title = request.getParameter("title");
		String location = request.getParameter("location");
		String value = request.getParameter("value");
		Date date = new Date();
		String mainpic  = null;
		if (multipartResolver.isMultipart(request)) {
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			Iterator iter = multiRequest.getFileNames();
			while (iter.hasNext()) {
				MultipartFile file = multiRequest.getFile(iter.next().toString());
				if (file != null) {
					mainpic = file.getOriginalFilename();
					mainpic = date.getTime()+mainpic.substring(mainpic.lastIndexOf("."), mainpic.length());
					String path = "E:/springUpload/" + mainpic;
					try {
						file.transferTo(new File(path));
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
		Article article = new Article(title, user.getUsername(), date, mainpic, location, user.getUserid(), value);
		System.out.println(article);
		return "Ã·Ωª ß∞‹";
	}
}
