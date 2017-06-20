package com.po;

/**
 * Created by wangz on 2017/6/19.
 */
public class Picture {
    private int id;
    private String coverImage;
    private String touristSpot;
    private String profile;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCoverImage() {
        return coverImage;
    }

    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }

    public String getTouristSpot() {
        return touristSpot;
    }

    public void setTouristSpot(String touristSpot) {
        this.touristSpot = touristSpot;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
}
