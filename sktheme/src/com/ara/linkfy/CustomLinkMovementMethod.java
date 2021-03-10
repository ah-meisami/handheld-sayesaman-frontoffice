package com.ara.linkfy;


import java.util.ArrayList;
import java.util.Iterator;

import android.content.Context;
import android.text.Layout;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.Toast;

public class CustomLinkMovementMethod extends LinkMovementMethod{


private static Context  movementContext;
private ArrayList<linkmovementListener> linkListeners =new ArrayList<CustomLinkMovementMethod.linkmovementListener>();
private static CustomLinkMovementMethod linkMovementMethod  = new CustomLinkMovementMethod();

public boolean onTouchEvent(android.widget.TextView widget, android.text.Spannable buffer, android.view.MotionEvent event)
{
	
    int action = event.getAction();

    if (action == MotionEvent.ACTION_UP)
    {
        int x = (int) event.getX();
        int y = (int) event.getY();

        x -= widget.getTotalPaddingLeft();
        y -= widget.getTotalPaddingTop();

        x += widget.getScrollX();
        y += widget.getScrollY();

        Layout layout = widget.getLayout();
        int line = layout.getLineForVertical(y);
        int off = layout.getOffsetForHorizontal(line, x);

        URLSpan[] link = buffer.getSpans(off, off, URLSpan.class);
        if (link.length != 0)
        {
            String url[] = link[0].getURL().split(":");
            for (linkmovementListener lnk : linkListeners) {
				lnk.linkclicked(url);
			}
            return true;
        }
    }

    return super.onTouchEvent(widget, buffer, event);
}

public static CustomLinkMovementMethod getInstance(Context c)
{
    movementContext = c;
    return linkMovementMethod;
}
public void addLinkListeners(linkmovementListener linkListeners) {
	this.linkListeners.add(linkListeners);
}
public void removeLinkListeners(linkmovementListener linkListeners) {
	this.linkListeners.remove(linkListeners);
}
public interface linkmovementListener{
	public void linkclicked(String url[]);
}
}