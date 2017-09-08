package com.cn.hnust.dao;

import java.util.List;

import com.cn.hnust.pojo.Article;
import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.User;

public interface ArticleMapper {
    int deleteByPrimaryKey(Integer idarticle);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(Integer idarticle);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
    
    List<Article> getUserArticles(User user);
    
    List<Article> getCountrysideArticles(CountryWithBLOBs bloBs);
}