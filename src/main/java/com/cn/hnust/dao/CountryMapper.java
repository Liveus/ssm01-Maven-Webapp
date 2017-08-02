package com.cn.hnust.dao;

import com.cn.hnust.pojo.Country;
import com.cn.hnust.pojo.CountryWithBLOBs;

public interface CountryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CountryWithBLOBs record);

    int insertSelective(CountryWithBLOBs record);

    CountryWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CountryWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CountryWithBLOBs record);

    int updateByPrimaryKey(Country record);
}