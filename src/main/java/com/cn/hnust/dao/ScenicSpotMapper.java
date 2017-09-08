package com.cn.hnust.dao;

import java.util.List;

import com.cn.hnust.pojo.Country;
import com.cn.hnust.pojo.CountryWithBLOBs;
import com.cn.hnust.pojo.ScenicSpot;

public interface ScenicSpotMapper {
    int deleteByPrimaryKey(Integer scenicspotid);

    int insert(ScenicSpot record);

    int insertSelective(ScenicSpot record);

    ScenicSpot selectByPrimaryKey(Integer scenicspotid);

    int updateByPrimaryKeySelective(ScenicSpot record);

    int updateByPrimaryKeyWithBLOBs(ScenicSpot record);

    int updateByPrimaryKey(ScenicSpot record);
    
    List<ScenicSpot> getCountrysideSopts(CountryWithBLOBs country);
}