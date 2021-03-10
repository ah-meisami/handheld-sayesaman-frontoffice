package accordionPkg;

import com.example.sktheme.R;
import com.example.sktheme.customAnimationListener;
import com.example.sktheme.customAnime;
import com.example.sktheme.statics;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

public class accordionChild extends LinearLayout implements
		customAnimationListener {
	private int tempvisiblity = GONE;
	public boolean initial = true;
	int height_v = 0;
	int width_v = 0;
	private boolean closemyself=false;
	public accordionChild(Context context) {
		super(context);
		dojobs();
	}
	public accordionChild(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}
	
Handler handler;
	final void dojobs() {
		handler=statics.getHandler();
		setId(R.id.child);
		setOrientation(VERTICAL);
		setBackgroundColor(0xff035583);
		setVisibility(INVISIBLE);
		getViewTreeObserver().addOnGlobalLayoutListener(
				new ViewTreeObserver.OnGlobalLayoutListener() {
					@Override
					public void onGlobalLayout() {
						int childs_h = 0;
						if (initial) {
							for (int i = 0; i < getChildCount(); i++) {
								if (getChildAt(i).getId() == R.id.accordion) {
									childs_h += getChildAt(i).findViewById(
											R.id.child).getMeasuredHeight();
									// headers_h+=getChildAt(i).findViewById(R.id.header).getMeasuredHeight();
								}
							}
							height_v = getMeasuredHeight() - (childs_h);
							width_v = getMeasuredWidth();
							initial = !initial;
							if(getVisibility()==INVISIBLE)
								setVisibility(GONE);
						} else {
						}
					}
				});
	}

	@Override
	public void setVisibility(int visibility) {
		if(visibility==VISIBLE){
		if(getParent() instanceof accordionItem){
		accordionItem ai=(accordionItem) getParent();
		if(ai.getPreferences().isInSmallMode()){
			for(int i=0;i<getChildCount();i++){
				if(getChildAt(i) instanceof accordionItem)
					super.setVisibility(visibility);
			}
			return;
		}
		}
		}
		super.setVisibility(visibility);
	}
	@Override
	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		super.onLayout(changed, l, t, r, b);
	}
	public int getTempvisiblity() {
		if(closemyself)
			return VISIBLE;
		return tempvisiblity;
	}
	Thread animationTRD;
	public void setTempvisiblity(int tempvisiblity) {
		if(isClosemyself()&&tempvisiblity==GONE)
			return;
		if (animationTRD == null || !animationTRD.isAlive()) {
			this.tempvisiblity = tempvisiblity;
			try {
				myAnim a = new myAnim(this, 300);
				animationTRD = new Thread(a);
				animationTRD.start();
			} catch (Exception ex) {
			}
		}
	}
	public class myAnim extends customAnime {
		ViewGroup v;
		long duration;
		int framerate = 50;
		RelativeLayout.LayoutParams p;
		public myAnim(ViewGroup v, long duration) {
			this.v = v;
			this.duration = duration;
			p = (android.widget.RelativeLayout.LayoutParams) v
					.getLayoutParams();
		}
		@Override
		public void run() {
			if(getTempvisiblity()==VISIBLE){
			visibleAnime();
			}else
				if(getTempvisiblity()==GONE){
					goneAnimation();
				}
		}
		public void goneAnimation() {
			try {
				animationStarted(Thread.currentThread(), this);
				// TODO Auto-generated method stub
				int h = getMeasuredHeight();
				p = (android.widget.RelativeLayout.LayoutParams) v
						.getLayoutParams();
				p.height = getMeasuredHeight();
				float f = (float) h / ((float) duration / (float) framerate);
				float newh = p.height;
				while (p.height >0) {
					try {
						try {
							Thread.sleep(framerate);
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						p = (android.widget.RelativeLayout.LayoutParams) (v
								.getLayoutParams());
						newh -= f;
						p.height = (int) newh;
						if (p.height <0)
							p.height = 0;

						handler.post(new Runnable() {
									public void run() {
										myAnim.this.v
												.setLayoutParams(myAnim.this.p);
										try{
											ViewGroup accordion = (ViewGroup) getParent();
											if(accordion instanceof accordionItem){
												((accordionItem)accordion).updatechilds(null);
											}
										}catch(Exception ex){}
									}
								});
					} catch (Exception ex) {
					}
				}
				if(getTempvisiblity()==GONE){
					((Activity) accordionChild.this.getContext())
					.runOnUiThread(new Runnable() {
						public void run() {
							setVisibility(getTempvisiblity());
						}
					});
				}
				p.height = android.view.ViewGroup.LayoutParams.WRAP_CONTENT;
				((Activity) accordionChild.this.getContext())
						.runOnUiThread(new Runnable() {
							public void run() {
								myAnim.this.v.setLayoutParams(myAnim.this.p);
								try{
									ViewGroup accordion = (ViewGroup) getParent();
									if(accordion instanceof accordionItem){
										((accordionItem)accordion).updatechilds(null);
									}
								}catch(Exception ex){}
							}
						});
			} catch (Exception ex) {

			}
			animationFinished(Thread.currentThread(), this);
		}
		public void visibleAnime() {
			handler.post(new Runnable() {
				public void run() {
					setVisibility(tempvisiblity);
				}
			});
			
			try {
				animationStarted(Thread.currentThread(), this);
				// TODO Auto-generated method stub
				int h = height_v;
				p = (android.widget.RelativeLayout.LayoutParams) v
						.getLayoutParams();
				p.height = 0;
				handler.post(new Runnable() {
							public void run() {
								myAnim.this.v.setLayoutParams(myAnim.this.p);
								try{
									ViewGroup accordion = (ViewGroup) getParent();
									if(accordion instanceof accordionItem){
										((accordionItem)accordion).updatechilds(null);
									}
								}catch(Exception ex){}
							}
						});
				v.postInvalidate();
				float f = (float) h / ((float) duration / (float) framerate);
				float newh = 0;
				while (p.height < h) {
					try {
						try {
							Thread.sleep(framerate);
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						p = (android.widget.RelativeLayout.LayoutParams) (v
								.getLayoutParams());
						newh += f;
						p.height = (int) newh;
						if (p.height > h)
							p.height = h;

						handler.post(new Runnable() {
									public void run() {
										myAnim.this.v
												.setLayoutParams(myAnim.this.p);
										try{
											ViewGroup accordion = (ViewGroup) getParent();
											if(accordion instanceof accordionItem){
												((accordionItem)accordion).updatechilds(null);
											}
										}catch(Exception ex){}
									}
								});
					} catch (Exception ex) {
					}

				}
				p.height = android.view.ViewGroup.LayoutParams.WRAP_CONTENT;
				handler.post(new Runnable() {
							public void run() {
								myAnim.this.v.setLayoutParams(myAnim.this.p);
								try{
								ViewGroup accordion = (ViewGroup) getParent();
								if(accordion instanceof accordionItem){
									((accordionItem)accordion).updatechilds(null);
								}
								}catch(Exception ex){}
							}
						});
			} catch (Exception ex) {

			}
			animationFinished(Thread.currentThread(), this);
		}
	}

	@Override
	public void animationStarted(Thread t, customAnime a) {
		// TODO Auto-generated method stub

	}

	@Override
	public void animationFinished(Thread t, customAnime a) {
		// TODO Auto-generated method stub
try{
	handler.post(new Runnable() {
					public void run() {
						try{
						ViewGroup accordion = (ViewGroup) getParent();
						if(accordion instanceof accordionItem){
							if(((accordionItem)accordion).getPreferences().isShowFooterAtEnd())
								((accordionItem)accordion).getFooter().setVisibility(getVisibility());
							((accordionItem)accordion).getHeader().invalidate();
						}
						}catch(Exception ex){}
					}
				});}catch(Exception ex){}
	}

	@Override
	public void animationRepeat(Thread t, customAnime a) {
		// TODO Auto-generated method stub

	}

	public boolean isClosemyself() {
		return closemyself;
	}

	public void setClosemyself(boolean closemyself) {
		this.closemyself = closemyself;
	}

}
