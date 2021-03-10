/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ara.map;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.MaskFilter;
import android.graphics.Paint;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.Region;
import android.media.Ringtone;

/**
 *
 * @author ENAKHI
 */
public class Graphics {
public static final int TOP=0;
public static final int LEFT=0;
Canvas c;

Paint p;
int[] col={Color.BLUE,Color.CYAN,Color.RED};
int o=0;
    public Graphics(Canvas c) {
        this.c = c;
        p=new Paint(Paint.DITHER_FLAG);
        p.setColor(Color.BLACK);
        p.setStyle(Paint.Style.FILL);
    }

    void translate(int w, int h) {
        c.translate(w, h);
    }

    int getColor() {
        return p.getColor();
    }

    void setColor(int i) {
        p.setColor(i);
    }

    void drawLine(float x1, float y1, float x2, float y2) {
        c.drawLine(x1, y1, x2, y2, p);
    }

    void fillRect(float i, float i0, float i1, float i2) {
        Paint.Style s=p.getStyle();
        p.setStyle(Paint.Style.FILL);
        c.drawRect(i, i0, i+i1, i0+i2, p);
        p.setStyle(s);
    }

    void drawRegion(Bitmap img, float x_src, float y_src, float w, float h, float TRANS_NONE, float x_dest, float y_dest, float i) {
        x_src*=-1;
        Rect r=c.getClipBounds();
        c.clipRect(x_dest,y_dest,x_dest+w, y_dest+1000,Region.Op.REPLACE);
        if(o==0)
       // p.setStyle(Paint.Style.FILL);
        c.drawBitmap(img,x_src+x_dest,y_src+y_dest,  p);
        c.clipRect(r, Region.Op.REPLACE);
    }

	public void drawImage(Bitmap bg, float i, float j, float k) {
		// TODO Auto-generated method stub
		c.drawBitmap(bg, i, j,p);	 
	}

	public void drawRect(float i, float j, float k, float l) {
		Paint.Style s=p.getStyle();
                p.setStyle(Paint.Style.STROKE);
                c.drawRect(i, j, i+k, j+l, p);
                p.setStyle(s);
		
	}

	public void setClip(float i, float j, float size1, float size12) {
		// TODO Auto-generated method stub
		
	}
    
}
