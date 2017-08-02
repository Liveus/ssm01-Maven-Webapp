package com.cn.hnust.pojo;

public class Country {
    private Integer id;

    private String name;

    private Integer sights;

    private String location;

    private String ac;

    private String rc;

    private String cc;

    private Integer targetsum;

    private Double score;

    private String mianpic;

    private Integer hotels;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getSights() {
        return sights;
    }

    public void setSights(Integer sights) {
        this.sights = sights;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public String getAc() {
        return ac;
    }

    public void setAc(String ac) {
        this.ac = ac == null ? null : ac.trim();
    }

    public String getRc() {
        return rc;
    }

    public void setRc(String rc) {
        this.rc = rc == null ? null : rc.trim();
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc == null ? null : cc.trim();
    }

    public Integer getTargetsum() {
        return targetsum;
    }

    public void setTargetsum(Integer targetsum) {
        this.targetsum = targetsum;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public String getMianpic() {
        return mianpic;
    }

    public void setMianpic(String mianpic) {
        this.mianpic = mianpic == null ? null : mianpic.trim();
    }

    public Integer getHotels() {
        return hotels;
    }

    public void setHotels(Integer hotels) {
        this.hotels = hotels;
    }
}