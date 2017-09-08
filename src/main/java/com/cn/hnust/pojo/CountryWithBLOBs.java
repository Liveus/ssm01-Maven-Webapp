package com.cn.hnust.pojo;

public class CountryWithBLOBs extends Country {
    private String introduce;

    private String culture;

    private String activities;

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    public String getCulture() {
        return culture;
    }

    public void setCulture(String culture) {
        this.culture = culture == null ? null : culture.trim();
    }

    public String getActivities() {
        return activities;
    }

    @Override
	public String toString() {
		return "CountryWithBLOBs [introduce=" + introduce + ", culture=" + culture + ", activities=" + activities
				+ ", getId()=" + getId() + ", getName()=" + getName() + ", getSights()=" + getSights()
				+ ", getLocation()=" + getLocation() + ", getAc()=" + getAc() + ", getRc()=" + getRc() + ", getCc()="
				+ getCc() + ", getTargetsum()=" + getTargetsum() + ", getScore()=" + getScore() + ", getMianpic()="
				+ getMianpic() + ", getHotels()=" + getHotels() + ", getRestaurants()=" + getRestaurants()
				+ ", getExamine()=" + getExamine() + ", getUserid()=" + getUserid() + ", getUsername()=" + getUsername()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	public void setActivities(String activities) {
        this.activities = activities == null ? null : activities.trim();
    }
}