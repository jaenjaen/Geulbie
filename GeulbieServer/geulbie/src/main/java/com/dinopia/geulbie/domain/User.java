package com.dinopia.geulbie.domain;

public class User {
	private int userIndex;
	private String userNickname;
	private String userAccount;
	private int apiIndex;
	private String userApiKey;
	private String userImg;
	private int removeAd;
	private int userBerry;
	
	
	
	public User() {}
	
	public User(int userIndex, String userNickname, String userAccount, int apiIndex, String userApiKey, String userImg,
			int removeAd, int userBerry) {
		this.userIndex = userIndex;
		this.userNickname = userNickname;
		this.userAccount = userAccount;
		this.apiIndex = apiIndex;
		this.userApiKey = userApiKey;
		this.userImg = userImg;
		this.removeAd = removeAd;
		this.userBerry = userBerry;
	}
	public int getUserIndex() { return userIndex; } 
    public void setUserIndex(int userIndex) { this.userIndex = userIndex; } 
	public String getUserNickname() {return userNickname; } 
	public void setUserNickname(String userNickname) {this.userNickname = userNickname; } 
	public String getUserAccount() { return userAccount; } 
	public void setUserAccount(String userAccount) {this.userAccount = userAccount; } 
	public int getApiIndex() { return apiIndex;} 
	public void setApiIndex(int apiIndex) { this.apiIndex = apiIndex; } 
	public String getUserApiKey() { return userApiKey; } 
	public void setUserApiKey(String userApiKey) { this.userApiKey = userApiKey; } 
	public String getUserImg() { return userImg; } 
	public void setUserImg(String userImg) { this.userImg = userImg; } 
	public int getRemoveAd() { return removeAd; } 
	public void setRemoveAd(int removeAd) { this.removeAd = removeAd;} 
	public int getUserBerry() { return userBerry; } 
	public void setUserBerry(int userBerry) { this.userBerry = userBerry; }

	@Override
	public String toString() {
		return "User [userIndex=" + userIndex + ", userNickname=" + userNickname + ", userAccount=" + userAccount
				+ ", apiIndex=" + apiIndex + ", userApiKey=" + userApiKey + ", userImg=" + userImg + ", removeAd="
				+ removeAd + ", userBerry=" + userBerry + "]";
	}
	
}
