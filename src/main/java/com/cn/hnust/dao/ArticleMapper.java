package com.cn.hnust.dao;

import com.cn.hnust.pojo.Article;

public interface ArticleMapper {
    int deleteByPrimaryKey(Integer idarticle);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(Integer idarticle);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
}