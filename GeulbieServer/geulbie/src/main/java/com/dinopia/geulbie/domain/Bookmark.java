package com.dinopia.geulbie.domain;

public class Bookmark {
	private int bookmarkIndex;
	private int userIndex;
	private int bookmarkTypeIndex;
	private int itemIndex;
	
	public Bookmark() {}
	
	public Bookmark(int bookmarkIndex, int userIndex, int bookmarkTypeIndex, int itemIndex) {
		this.bookmarkIndex = bookmarkIndex;
		this.userIndex = userIndex;
		this.bookmarkTypeIndex = bookmarkTypeIndex;
		this.itemIndex = itemIndex;
	}
	public int getBookmarkIndex() {
		return bookmarkIndex;
	}
	public void setBookmarkIndex(int bookmarkIndex) {
		this.bookmarkIndex = bookmarkIndex;
	}
	public int getUserIndex() {
		return userIndex;
	}
	public void setUserIndex(int userIndex) {
		this.userIndex = userIndex;
	}
	public int getBookmarkTypeIndex() {
		return bookmarkTypeIndex;
	}
	public void setBookmarkTypeIndex(int bookmarkTypeIndex) {
		this.bookmarkTypeIndex = bookmarkTypeIndex;
	}
	public int getItemIndex() {
		return itemIndex;
	}
	public void setItemIndex(int itemIndex) {
		this.itemIndex = itemIndex;
	}

	@Override
	public String toString() {
		return "Bookmark [bookmarkIndex=" + bookmarkIndex + ", userIndex=" + userIndex + ", bookmarkTypeIndex="
				+ bookmarkTypeIndex + ", itemIndex=" + itemIndex + "]";
	}
}
