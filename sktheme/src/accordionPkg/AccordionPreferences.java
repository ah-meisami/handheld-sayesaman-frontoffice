package accordionPkg;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.Button;

import com.example.sktheme.R;
import com.example.sktheme.statics;

public class AccordionPreferences {
	
	public static final int TYPE_NOT_SELECTED = 0;
	public static final int TYPE_SELECTED = 1;
	public static final int TYPE_CHILD_SELECTED = 2;
	public static final int COLOR_CLOSE = 0xff000000;
	public static final int COLOR_OPEN_1 = 0xffffffff;
	public static final int COLOR_OPEN_2 = 0xffeeeeee;
	private int bgs[];
	private Bitmap openclose[];
	private int colors[];
	private boolean hideUpperBrothers = true;
	private boolean hidebelowBrothers = false;
	private boolean closechildswhenclose = true;
	public static final int ALIGN_LEFT=0x00000001;
	public static final int ALIGN_RIGHT=0x00000002;
	public static final int ALIGN_CENTER=0x00000003;
	private int align=ALIGN_RIGHT;
	private boolean showOpenClose=true;
	private boolean inSmallMode=false;
	private boolean showIcon=true;
	private boolean showFooterAtstart=false;
	private boolean showFooterAtEnd=true;
	public static final int MENU_TYPE_DEFUALT=0;
	public static final int MENUTYPE_FILTER=1;
	public static final int MENUTYPE_ACCOUNT_MENU=2;
	private int menutype=MENU_TYPE_DEFUALT;
	private Bitmap onOff[];
	public int[] getBgs() {
		if (bgs == null)
			bgs = new int[] { R.drawable.accordion_bg,
					R.drawable.accordion_bg_selected,
					R.drawable.accordion_bg_parent_selected };
		return bgs;
	}
	public Bitmap[] getOpenclose() {
		if (openclose == null) {
			openclose = new Bitmap[3];
			openclose[0] = BitmapFactory.decodeResource(statics.getContext()
					.getResources(), R.drawable.accordion_close);
			openclose[1] = BitmapFactory.decodeResource(statics.getContext()
					.getResources(), R.drawable.accordion_open1);
			openclose[2] = BitmapFactory.decodeResource(statics.getContext()
					.getResources(), R.drawable.accordion_open1);
		}
		return openclose;
	}

	public void setColors(int colors[]) {
		this.colors = colors;
	}

	public int[] getColors() {
		if (colors == null)
			colors = new int[] { COLOR_CLOSE, COLOR_OPEN_1, COLOR_OPEN_2 };
		return colors;
	}

	public void setBgs(int bgs[]) {
		this.bgs = bgs;
	}

	public void setOpenclose(Bitmap openclose[]) {
		this.openclose = openclose;
	}

	public int getBgs(int state) {
		return getBgs()[state];
	}

	public int getColors(int state) {
		// TODO Auto-generated method stub
		return getColors()[state];
	}

	public Bitmap getOpenclose(int state) {
		// TODO Auto-generated method stub
		return getOpenclose()[state];
	}

	public boolean isHideUpperBrothers() {
		return hideUpperBrothers;
	}

	public void setHideUpperBrothers(boolean hideUpperBrothers) {
		this.hideUpperBrothers = hideUpperBrothers;
	}

	public boolean isHidebelowBrothers() {
		return hidebelowBrothers;
	}

	public void setHidebelowBrothers(boolean hidebelowBrothers) {
		this.hidebelowBrothers = hidebelowBrothers;
	}

	public boolean isClosechildswhenclose() {
		return closechildswhenclose;
	}

	public void setClosechildswhenclose(boolean closechildswhenclose) {
		this.closechildswhenclose = closechildswhenclose;
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

	public boolean isShowIcon() {
		return showIcon;
	}

	public void setShowIcon(boolean showIcon) {
		this.showIcon = showIcon;
	}

	public boolean isShowOpenClose() {
		return showOpenClose;
	}

	public void setShowOpenClose(boolean showOpenClose) {
		this.showOpenClose = showOpenClose;
	}

	public boolean isInSmallMode() {
		return inSmallMode;
	}

	public void setInSmallMode(boolean inSmallMode) {
		this.inSmallMode = inSmallMode;
	}

	public Bitmap[] getOnOff() {
		if(onOff==null)
			onOff=statics.getOnOff();
		return onOff;
	}

	public void setOnOff(Bitmap onOff[]) {
		this.onOff = onOff;
	}

	public int getMenutype() {
		return menutype;
	}

	public void setMenutype(int menutype) {
		this.menutype = menutype;
	}
	public boolean isShowFooterAtstart() {
		return showFooterAtstart;
	}
	public void setShowFooterAtstart(boolean showFooterAtstart) {
		this.showFooterAtstart = showFooterAtstart;
	}
	public boolean isShowFooterAtEnd() {
		return showFooterAtEnd;
	}
	public void setShowFooterAtEnd(boolean showFooterAtEnd) {
		this.showFooterAtEnd = showFooterAtEnd;
	}
}
