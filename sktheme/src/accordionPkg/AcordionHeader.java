package accordionPkg;

import com.example.sktheme.R;
import com.example.sktheme.paintedProductLayout;

import android.content.Context;
import android.drm.DrmStore.Action;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

public class AcordionHeader extends View {
	private String caption = "";
	private String caption1 = "";
	private String subCaption = "";
	private int state = AccordionPreferences.TYPE_NOT_SELECTED;
	public Bitmap pic;
	AccordionPreferences preferences;
	Paint pcaption = new Paint();
	Paint psubcaption = new Paint();
	private Rect rectOpenClose = new Rect();
	private Rect rectPic = new Rect();
	private Rect rectCaption = new Rect();
	private Rect rectSubCaption = new Rect();
	Point captionxy = new Point();
	Point subcaptionxy = new Point();
	boolean inSmallmode = false;
	public Rect onOffrect;
	private int onOffW;
	private int onOffH;
	private boolean showOnOff = false;
	public static int OFF_STATE = 0;
	public static int ON_STATE = 1;
	private int onOffState = OFF_STATE;

	public AcordionHeader(Context context, AccordionPreferences preferences) {
		super(context);
		this.preferences = preferences;
		inSmallmode = preferences.isInSmallMode();
		dojobs();
	}
	Rect rpading = new Rect();

	public void stateChanged() {
		rpading = new Rect(5, 0, 10, 0);
		setPadding(5, 0, 10, 0);
		pcaption.setAntiAlias(true);
		setBackgroundResource(preferences.getBgs(state));
		if (preferences.isInSmallMode()) {
			if (pic != null)
				rectPic = new Rect(rpading.left, getMeasuredHeight() / 2
						- pic.getHeight() / 2, rpading.left + pic.getWidth(),
						getMeasuredHeight() / 2 + pic.getHeight() / 2);
		} else {
			try {
				int w = 0;
				int h = 0;
				if(preferences.getMenutype()!=preferences.MENUTYPE_FILTER)
					rectOpenClose = new Rect(rpading.left,
						getMeasuredHeight()
								/ 2
								- (int) ((preferences.getOpenclose(state)
										.getHeight() / 2) * .7), rpading.left
								+ (int) (preferences.getOpenclose(state)
										.getHeight() * .7), getMeasuredHeight()
								/ 2
								+ (int) ((preferences.getOpenclose(state)
										.getHeight() / 2) * .7));
				onOffrect = new Rect(rpading.left, getMeasuredHeight()
						/ 2 - onOffH / 2, rpading.left + onOffW,
						getMeasuredHeight() / 2 + onOffH / 2);
				if (isShowOnOff()) {
					w = onOffrect.right;
					h = onOffrect.bottom;
				} else {
					if(preferences.getMenutype()!=preferences.MENUTYPE_FILTER)
					{
					w = rectOpenClose.right;
					h = rectOpenClose.bottom;
					}
				}
				
				w += 20;
				if (pic != null)
					rectPic = new Rect(getMeasuredWidth() - pic.getWidth()
							- rpading.right, getMeasuredHeight() / 2
							- pic.getHeight() / 2, getMeasuredWidth()
							- rpading.right, getMeasuredHeight() / 2
							+ pic.getHeight() / 2);
				else
					rectPic.left = getMeasuredWidth();
				pcaption.setColor(preferences.getColors(state));
				pcaption.setTextSize(20);
				psubcaption = new Paint(pcaption);
				psubcaption.setTextSize(12);
				Rect rectend=rectPic;
				if(preferences.getMenutype()==preferences.MENUTYPE_FILTER)
				{
					rectOpenClose = new Rect(getWidth()-preferences.getOpenclose(state).getWidth()-rpading.right,
							getMeasuredHeight()
									/ 2
									- (int) ((preferences.getOpenclose(state)
											.getHeight() / 2) * .7), getWidth()-preferences.getOpenclose(state).getWidth()-rpading.right
									+ (int) (preferences.getOpenclose(state)
											.getHeight() * .7), getMeasuredHeight()
									/ 2
									+ (int) ((preferences.getOpenclose(state)
											.getHeight() / 2) * .7));
					rectend=rectOpenClose;
				}
				psubcaption.getTextBounds(subCaption, 0, subCaption.length(),
						rectSubCaption);
				psubcaption.setAntiAlias(true);
				caption = paintedProductLayout.gettext(pcaption, caption1,
						rectend.left - w - rectSubCaption.width());
				pcaption.getTextBounds(getCaption(), 0, getCaption().length(),
						rectCaption);
				rectCaption.right += 5;
				if (preferences.iscenterAlignment())
					captionxy.x = (rectend.left - w)
							/ 2
							- ((rectCaption.width() + rectSubCaption.width()) / 2)
							+ w;
				else if (preferences.isRightAlignment())
					captionxy.x = (rectend.left) - rectCaption.width() - 10;
				else
					captionxy.x = (w) + rectSubCaption.width() + 10;
				captionxy.y = getMeasuredHeight() / 2 + rectCaption.height()
						/ 2;
				subcaptionxy.x = captionxy.x - rectSubCaption.width();
				subcaptionxy.y = getMeasuredHeight() / 2+rectSubCaption.height()/2;
				inSmallmode = preferences.isInSmallMode();
			} catch (Exception ex) {
			}
		}
		// invalidate();
	}

	public AcordionHeader(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		dojobs();
	}

	public AcordionHeader(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}

	boolean in = false;

	@Override
	public boolean onTouchEvent(MotionEvent event) {
		if (!preferences.isInSmallMode() && isShowOnOff()) {
			if (event.getAction() == MotionEvent.ACTION_DOWN) {
				if (event.getX() >= onOffrect.left
						&& event.getX() < onOffrect.right
						/*&& event.getY() >= onOffrect.top
						&& event.getY() < onOffrect.bottom*/) {
					toggleOnOff();
					in = true;
					return true;
				}
			} else {
				if (event.getAction() != MotionEvent.ACTION_MOVE && in) {
					if (event.getX() >= onOffrect.left
							&& event.getX() < onOffrect.right
							/*&& event.getY() >= onOffrect.top
							&& event.getY() < onOffrect.bottom*/) {
						onOffChanged();
					}
//					else {
//						toggleOnOff();
//					}
					in = false;
				}
			}
		}
		boolean b = super.onTouchEvent(event);
		invalidate();
		return b;
	}

	private void onOffChanged() {

	}

	private void toggleOnOff() {
		if (onOffState == ON_STATE)
			setOnOffState(OFF_STATE);
		else
			setOnOffState(ON_STATE);
	}
	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		setMeasuredDimension(((ViewGroup) getParent()).getWidth(), 60);
	}

	private void dojobs() {
		onOffW = (int) (preferences.getOnOff()[1].getWidth());
		onOffH = (int) (preferences.getOnOff()[1].getHeight());
	}

	boolean b = true;

	@Override
	protected void onDraw(Canvas canvas) {
		try {
			if (inSmallmode != preferences.isInSmallMode()) {
				stateChanged();
			}
			if (preferences.isInSmallMode()) {
				if (pic != null) {
					canvas.drawBitmap(pic, null, rectPic, pcaption);
				}
			} else {
				if (b) {
					stateChanged();
					b = !b;
				}
				// TODO Auto-generated method stub
				super.onDraw(canvas);
				if (preferences.isShowOpenClose()&&(!isShowOnOff()||preferences.getMenutype()==preferences.MENUTYPE_FILTER))
					canvas.drawBitmap(preferences.getOpenclose(state), null,
							rectOpenClose, pcaption);
				if (preferences.isShowOpenClose())
					if (pic != null) {
						canvas.drawBitmap(pic, null, rectPic, pcaption);
					}
				if (isShowOnOff()) {
					canvas.drawBitmap(preferences.getOnOff()[onOffState], null,
							onOffrect, pcaption);
				}
				canvas.drawText(caption, captionxy.x, captionxy.y, pcaption);
				canvas.drawText(subCaption, subcaptionxy.x, subcaptionxy.y,
						psubcaption);
			}
		} catch (Exception ex) {
		}
	}
	@Override
	protected void onSizeChanged(int w, int h, int oldw, int oldh) {
		super.onSizeChanged(w, h, oldw, oldh);
		stateChanged();
	}

	public String getCaption() {
		return caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
		caption1 = caption;
		stateChanged();
	}

	public void setTextColor(int i) {
		pcaption.setColor(i);
		invalidate();
	}

	public void headerImageSetVisibility(int invisible) {
	}
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
		stateChanged();
	}

	public void setImageBitmap(Bitmap pic) {
		this.pic = pic;
	}

	public String getSubCaption() {
		return subCaption;
	}

	public void setSubCaption(String subCaption) {
		this.subCaption = subCaption;
		stateChanged();
	}

	public void setCaption(String[] grpNamecount) {
		setSubCaption(grpNamecount[1]);
		setCaption(grpNamecount[0]);
	}

	public boolean isShowOnOff() {
		return showOnOff;
	}

	public void setShowOnOff(boolean showOnOff) {
		this.showOnOff = showOnOff;
		stateChanged();
	}

	public int getOnOffState() {
		return onOffState;
	}

	public void setOnOffState(int onOffState) {

		this.onOffState = onOffState;
		stateChanged();
		if (onOffState == OFF_STATE) {
			((accordionItem)getParent()).setAllOFilterOff();
		}
	}
}
