package com.cn.hnust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.ArticleMapper;
import com.cn.hnust.pojo.Article;
import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.User;
import com.cn.hnust.service.ArticleService;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
	
	@Resource
	private ArticleMapper articleDao;

	@Override
	public List<Article> getUserArticles(User user) {
		// TODO Auto-generated method stub
		List<Article> articles = this.articleDao.getUserArticles(user);
		return articles;
	}

	@Override
	public void newArticle(Article article) {
		// TODO Auto-generated method stub
		this.articleDao.insertSelective(article);
		
	}

	@Override
	public Article one(Integer id) {
		// TODO Auto-generated method stub
		return this.articleDao.selectByPrimaryKey(id);
	}

	@Override
	public List<Article> getCountrysideArticles(CountryWithBLOBs bloBs) {
		// TODO Auto-generated method stub
		List<Article> articles = this.articleDao.getCountrysideArticles(bloBs);
		System.out.println("info:"+articles.toString());
		return articles;
	}
	
}
