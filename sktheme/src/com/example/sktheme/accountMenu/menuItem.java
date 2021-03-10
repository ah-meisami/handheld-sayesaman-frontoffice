package com.example.sktheme.accountMenu;

import java.util.ArrayList;

public class menuItem {
	int value;
	public String caption;
	int pic;
	private ArrayList<menuItem> childs = new ArrayList<menuItem>();

	public menuItem(int value, String caption, int pic) {
		this.value = value;
		this.caption = caption;
		this.pic = pic;
	}

	public void addChild(menuItem m) {
		getChilds().add(m);
	}

	public void RemoveChild(menuItem m) {
		getChilds().remove(m);
	}

	public ArrayList<menuItem> getChilds() {
		return childs;
	}
	
}
