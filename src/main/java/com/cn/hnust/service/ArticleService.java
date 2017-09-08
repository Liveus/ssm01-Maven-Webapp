package com.cn.hnust.service;

import java.util.List;

import com.cn.hnust.pojo.Article;
import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.User;

public interface ArticleService {
	
	public List<Article> getUserArticles(User user);
	
	/**
	 * �������μ�
	 * @param article
	 * @return
	 */
	public void newArticle(Article article);
	
	public Article one(Integer id);
	
	public List<Article> getCountrysideArticles(CountryWithBLOBs bloBs);
	
}
