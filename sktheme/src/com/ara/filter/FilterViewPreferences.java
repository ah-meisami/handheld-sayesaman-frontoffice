package com.ara.filter;

import com.example.sktheme.R;
import com.example.sktheme.statics;

import android.graphics.Bitmap;

public class FilterViewPreferences {
	public static final int ALIGN_LEFT=0x00000001;
	public static final int ALIGN_RIGHT=0x00000002;
	public static final int ALIGN_CENTER=0x00000003;
	private int align=ALIGN_RIGHT;
	private int bgColor;
	private int bgid=R.drawable.txt_bg;
	private Bitmap checkingPic[];
	private static FilterViewPreferences preferences;
	public FilterViewPreferences() {
		bgColor=0xffd1d1d1;
	}
	public int getAlign() {
		return align;
	}

	public void setAlign(int align) {
		this.align = align;
	}
	public boolean isRightAlignment() {
		return (align & ALIGN_RIGHT) == ALIGN_RIGHT;
	}
	public boolean isleftAlignment() {
		return (align & ALIGN_LEFT) == ALIGN_LEFT;
	}
	public boolean iscenterAlignment() {
		return (align & ALIGN_CENTER) == ALIGN_CENTER;
	}

	public int getBgColor() {
		return bgColor;
	}

	public void setBgColor(int bgColor) {
		this.bgColor = bgColor;
	}

	public Bitmap[] getCheckingPic() {
		if(checkingPic==null)
			checkingPic=statics.getcheckingPic();
		return checkingPic;
	}

	public void setCheckingPic(Bitmap checkingPic[]) {
		this.checkingPic = checkingPic;
	}

	public static FilterViewPreferences getPreferences() {
		if(preferences==null)
			preferences=new FilterViewPreferences();
		return preferences;
	}

	public static void setPreferences(FilterViewPreferences preferences) {
		FilterViewPreferences.preferences = preferences;
	}
	public int getBgid() {
		return bgid;
	}
	public void setBgid(int bgid) {
		this.bgid = bgid;
	}
}
