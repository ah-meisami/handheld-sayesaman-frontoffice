package com.ara.map;

import android.graphics.Path;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Vector;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.os.Environment;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;


/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author BEHNAM
 */
public final class Mymap implements mylocationchange{

    private static final int KEY_NUM1 = 0;
    private static final int KEY_NUM3 = 1;
    private static final int KEY_NUM2 = 2;
    private static final int KEY_NUM8 = 3;
    private static final int KEY_NUM4 = 4;
    private static final int KEY_NUM6 = 5;
    private static final int KEY_NUM0 = 6;
    int endsp = 82;
    public int x = 200;
    public int y = 200;
    public int prex = x;
    public int prey = y;
    int w = 2;
    int h = 2;
    int i = x / 200;
    int j = y / 200;
    int size = 200;
    int lasti = i;
    int lastj = j;
    int iindex = 0;
    int jindex = 0;
    int xcorner = 0;
    int ycorner = 0;
    Bitmap[][] img = new Bitmap[w][h];
    Point[] pos;
    int ipos0 = 0;
    int ipos1 = 2;
    int ipos = 1;
    Bitmap mg;
    Bitmap bg;
    Bitmap RightImage, leftImage;
    public boolean stoptr=true;
    double scale = 1;
    double scales[];
    String imgpath = "images"+File.separator+"1"+File.separator;
    int zooms = 0;
    Bitmap icon, z1, z3;
    float iconx, icony, iconx1, icony1;
    private int Zcolor = 0xff0000;
    private int ZcolorUn = 0xffffff;
    private int size1 = 200;
    Context c;
    Bitmap baseImg;
    Canvas baseCan;
    private Path ppath;
    private double[] lwscale;
    private double[] lhscale;

    public Mymap(int xx, int yy, Bitmap ico, Context c) {
        this.c = c;
        map1();
        icon = ico;
        prex = xx - size / 2;
        prey = yy - size / 2;
        iconx = xx;
        icony = yy;
        iconx1 = xx;
        icony1 = yy;
        getposes2(prex, prey, true);
        getposes(prex, prey, true);
        ppath = new Path();
        ppath.setFillType(Path.FillType.EVEN_ODD);
        ppath.moveTo(iconx, icony);
    }
    int lastxp=0;
    int lastyp=0;
    public void changepose(int xx, int yy){
    	 prex = xx - size / 2;
         prey = yy - size / 2;
         iconx = xx;
         icony = yy;
         iconx1 = xx;
         icony1 = yy;
         getposes2(prex, prey, true);
         getposes(prex, prey, true);
         lastxp=xx;
         lastyp=yy;
    }
    public Mymap(Context c) {
        this.c = c;
        map1();
    }

    public int getWidth() {
        return baseImg != null ? baseImg.getWidth() : 0;
    }

    public int getHeight() {
        return baseImg != null ? baseImg.getHeight() : 0;
    }

    public void map1() {
    	
        try {
            img[0][0] = BitmapFactory.decodeFile((getpicpath(i + 1, j + 1)));
            size = img[0][0].getWidth();
        } catch (Exception ex) {
        }
        try {
            img[0 + 1][0] = BitmapFactory.decodeFile((getpicpath(i + 2, j + 1)));
            size = img[0][0].getWidth();
        } catch (Exception ex) {
        }
        try {
            img[0][0 + 1] = BitmapFactory.decodeFile((getpicpath(i + 1, j + 2)));
            size = img[0][0].getWidth();
        } catch (Exception ex) {
        }
        try {
            img[0 + 1][0 + 1] = BitmapFactory.decodeFile((getpicpath(i + 2, j + 2)));
            size = img[0][0].getWidth();
        } catch (Exception ex) {
        }
        try{size=BitmapFactory.decodeFile((getpicpath( 1,  1))).getWidth();
        }catch(Exception ex){
        	Toast.makeText(c,ex.getMessage(),2000).show();
        	Toast.makeText(c,getpicpath(1, 1),2000).show();
        }
        Toast.makeText(c,getpicpath(1, 1),2000).show();
        baseImg = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
        baseCan = new Canvas(baseImg);
        if (ppath != null) {
            ppath = new Path();ppath.setFillType(Path.FillType.EVEN_ODD);
        }
        if (getWidth() > 250) {
            size1 = (getHeight() < getWidth()) ? getHeight() : getWidth();
            size1 -= 40;
            if (size1 > 400) {
                size1 = 400;
            }
        }
        int ii = 0;
        int jj = 0;
        boolean first = true;
        for (ii = 1;; ii++) {
            if (first) {
                for (jj = 1;; jj++) {
                	File f=new File((getpicpath(ii, jj)));
                    if (!f.exists()) {
                        first = false;
                        break;
                    }
                }
            }
            File f=new File((getpicpath(ii, 1)));
            if (!f.exists()) {
                break;
            }
        }
        ii /= 2;
        jj /= 2;
        ii--;
        jj--;
        if (ii < 0) {
            ii = 0;
        }
        if (jj < 0) {
            jj = 0;
        }
        i = ii;
        j = jj;
        x = ii * size;
        y = jj * size;
        prex = x;
        prey = y;
//        mg = BitmapFactory.decodeStream(c.getAssets().open(1, 1);
        xcorner = getWidth() / 2 - size / 2;
        ycorner = getHeight() / 2 - size / 2;
//        try {
//            bg = BitmapFactory.decodeStream(c.getAssets().open("/ImageIcons/bg.png");
//            RightImage = BitmapFactory.decodeStream(c.getAssets().open("/ImageIcons/exit.png");
//            leftImage = BitmapFactory.decodeStream(c.getAssets().open("/ImageIcons/zi.png");
//            z1 = BitmapFactory.decodeStream(c.getAssets().open("/ImageIcons/1.png");
//            z3 = BitmapFactory.decodeStream(c.getAssets().open("/ImageIcons/3.png");
//        } catch (IOException ex) {
//        }

        /*pos=new position[4];
        pos[0]=new position("1",320,1020);
        pos[1]=new position("2",620,720);
        pos[2]=new position("3",870,320);
        pos[3]=new position("4",320,560);*/
        getscales();


        getposes2(prex, prey, true);
        getposes(prex, prey, true);
        Canvas c;
    }
    int xop, yop, lastx, lasty;
    boolean draged = false;

    protected void pointerPressed(double xp, double yp) {
        xop = (int) xp;
        yop = (int) yp;
        draged = false;
        Statics.isPointer = true;
        onDraw();
    }

    protected void pointerDragged(double xp, double yp) {
        if (Math.abs(xop - xp) > Statics.DrageMax || Math.abs(yop - yp) > Statics.DrageMax || draged) {
            draged = true;
            getposes2(prex + (int) ((xop - xp) / scale), prey + (int) ((yop - yp) / scale), false);
            getposes(prex + (int) ((xop - xp) / scale), prey + (int) ((yop - yp) / scale), false);
        }
        onDraw();
    }

    protected void pointerReleased(double xp, double yp) {
        if (draged) {
            prex = prex + (int) ((xop - xp) / scale);
            prey = prey + (int) ((yop - yp) / scale);
        } else {
//            if (xp >= getWidth() - RightImage.getWidth() && yp >= getHeight() - RightImage.getHeight()) {
//                keyPressed(keys.KEY_RKEY);
//            } else if (xp <= leftImage.getWidth() && yp >= getHeight() - leftImage.getHeight()) {
//                keyPressed(keys.KEY_LKEY);
//            } else if (xp >= getWidth() / 2 - (z1.getWidth() + z3.getWidth()) / 2 && xp <= getWidth() / 2 - (z1.getWidth() + z3.getWidth()) / 2 + z1.getWidth() && yp >= getHeight() - z1.getHeight()) {
//                keyPressed(KEY_NUM1);
//            } else if (xp >= getWidth() / 2 - (z1.getWidth() + z3.getWidth()) / 2 + z1.getWidth() && xp <= getWidth() / 2 - (z1.getWidth() + z3.getWidth()) / 2 + z1.getWidth() + z3.getWidth() && yp >= getHeight() - z3.getHeight()) {
//                keyPressed(KEY_NUM3);
//            }
        }
        draged = false;
        onDraw();
    }
    Paint p = new Paint();

    public void onDraw() {
        p.setColor(0xffffffff);
        p.setStyle(Paint.Style.FILL);
        baseCan.drawRect(0, 0, getWidth(), getHeight(), p);
        Graphics g = new Graphics(baseCan);
        g.setColor(0xffffffff);
        g.fillRect(0, 0, getWidth(), getHeight());
        if (getWidth() > 200 || getHeight() > 200) {
            if (bg != null) {
                for (int k = 0; k < getWidth() / bg.getWidth() + 1; k++) {
                    for (int m = 0; m < getHeight() / bg.getHeight() + 1; m++) {
                        g.drawImage(bg, k * bg.getWidth(), m * bg.getHeight(), 0);
                    }
                }
            }
        }
        g.setColor(0xffff0000);
        try {
            if ((iindex) < img.length && (jindex) < img[0].length && img[(iindex)][(jindex)] != null) {
                g.drawImage(img[iindex][jindex], i * size - x + xcorner, j * size - y + ycorner, 0);
            }
        } catch (NullPointerException ex) {
        }
        try {
            if ((iindex + 1) < img.length && (jindex) < img[0].length && img[(iindex)][(jindex)] != null) {
                g.drawImage(img[iindex + 1][jindex], (i + 1) * size - x + xcorner, (j) * size - y + ycorner, 0);
            }
        } catch (NullPointerException ex) {
        }
        try {
            if ((iindex) < img.length && (jindex + 1) < img[0].length && img[(iindex)][(jindex + 1)] != null) {
                g.drawImage(img[iindex][jindex + 1], (i) * size - x + xcorner, (j + 1) * size - y + ycorner, 0);
            }
        } catch (NullPointerException ex) {
        }
        try {
            if ((iindex + 1) < img.length && (jindex + 1) < img[0].length && img[(iindex + 1)][(jindex + 1)] != null) {
                g.drawImage(img[iindex + 1][jindex + 1], (i + 1) * size - x + xcorner, (j + 1) * size - y + ycorner, 0);
            }

        } catch (NullPointerException ex) {
        }
        if (icon != null) {
            g.drawImage(icon, iconx - x + xcorner , icony - y + ycorner, 0);
        }
        g.setClip(0, 0, getWidth(), getHeight());
        if (RightImage != null) {
            g.drawImage(RightImage, getWidth() - RightImage.getWidth(), getHeight() - RightImage.getHeight(), 0);
        }
        if (leftImage != null) {
            g.drawImage(leftImage, 0, getHeight() - leftImage.getHeight(), 0);
        }
        if (Statics.isPointer) {
            if (z1 != null) {
                g.drawImage(z1, getWidth() / 2 - (z1.getWidth() + z3.getWidth()) / 2, getHeight() - z1.getHeight(), 0);
            }
            if (z3 != null) {
                g.drawImage(z3, getWidth() / 2 - (z1.getWidth() + z3.getWidth()) / 2 + z1.getWidth(), getHeight() - z3.getHeight(), 0);
            }
        }
//        RectF r = new RectF();
//        System.out.println(":::::::::::" + (-x + xcorner) + ":" + (-y + ycorner) + ":" + (-x) + ":" + (-y) + ":" + (r.top) + ":" + (r.left));
//        baseCan.translate(-x + xcorner, -y + ycorner);
//        p.setStyle(Paint.Style.STROKE);
//        p.setStrokeWidth(2);
//        p.setColor(0xff000000);
//        baseCan.drawPath(ppath, p);
//        p.setStyle(Paint.Style.FILL);
//        baseCan.translate(x - xcorner, y - ycorner);
    }

    public String getpicpath(int i, int j) {
    	File sdcard = Environment.getExternalStorageDirectory();
        String s=sdcard.getAbsolutePath()+File.separator+imgpath + j + "-" + i + ".jpg";
        return s;
    }
//@Override
//public boolean onTouchEvent(MotionEvent event) {
//	 float x = event.getX();
//     float y = event.getY();
//
//     switch (event.getAction()) {
//         case MotionEvent.ACTION_DOWN:
//             pointerPressed(x, y);
//             invalidate();
//             break;
//         case MotionEvent.ACTION_MOVE:
//             pointerDragged(x, y);
//             invalidate();
//             break;
//         case MotionEvent.ACTION_UP:
//             pointerReleased(x, y);
//             invalidate();
//             break;
//     }
//     return true;
//
//}

    protected void keyPressed(int keyCode) {
        if (keyCode == KEY_NUM1 || keyCode == KEY_NUM3) {
            if (keyCode == KEY_NUM1) {
                if (zooms < scales.length - 1) {
                    zooms = (zooms + 1);
                }

            } else if (keyCode == KEY_NUM3) {
                if (zooms > 0) {
                    zooms = (zooms - 1);
                }
            }
            scale = scales[zooms];
            imgpath = "images/" + (zooms + 1) + "/";
            getposes2(prex, prey, true);
            getposes(prex, prey, true);

        } else if (keyCode == KEY_NUM2 || keyCode == -1) {
            prey -= 10 / scale;
            getposes(prex, prey, false);
        } else if (keyCode == KEY_NUM8 || keyCode == -2) {
            prey += 10 / scale;
            getposes(prex, prey, false);
        } else if (keyCode == KEY_NUM4 || keyCode == -3) {
            prex -= 10 / scale;
            getposes(prex, prey, false);
        } else if (keyCode == KEY_NUM6 || keyCode == -4) {
            prex += 10 / scale;
            getposes(prex, prey, false);
        } else if (keyCode == KEY_NUM0 || keyCode == -6) {
//            updater.freememorrycnvs();
//            Statics.displaycurent(new gotosearch());
        } else if (keyCode == -7 || keyCode == keys.KEY_back) {
//            updater.freememorrycnvs();
//            Statics.displaycurent(new gotoMenu());
        }
    }

    protected void keyRepeated(int keyCode) {
        keyPressed(keyCode);
    }
    int lo=0;
    int lp=0;
    public boolean checkposes(int px1, int py1) {
        //px += size / 2;
        int px = (int) (px1 * scale);
        px += size / 2;
        //py += size / 2;
        int py = (int) (py1 * scale);
        //py += size / 2;
        int o = px / (size/2);
        int p = py / (size/2);
        boolean b=false;
        if (o != lo || p != lp) {
            b=true;
            lo=o;
            lp=p;
        }
        return b;	
    }
    public void getposes(int px, int py, boolean updateimage) {
        px += size / 2;
        px = (int) (px * scale);
        px -= size / 2;
        py += size / 2;
        py = (int) (py * scale);
        py -= size / 2;
        int o = px / size;
        int p = py / size;
        if (o != lasti || p != lastj || updateimage) {
            //setnull(lasti, lastj);
            setimg(o, p, lasti, lastj);
            lasti = o;
            lastj = p;
            i = o;
            j = p;
        }
        x = (int) (px);
        y = (int) (py);

    }

    public void getposes2(int px, int py, boolean updateimage) {
        px += size / 2;
        px = (int) (px * scale);
        px -= size / 2;
        py += size / 2;
        py = (int) (py * scale);
        py -= size / 2;
        int o = px / size;
        int p = py / size;
        if (o != lasti || p != lastj || updateimage) {
            setnull(lasti, lastj);
            setimg1(o, p, lasti, lastj);
            lasti = o;
            lastj = p;
            i = o;
            j = p;
        }
        x = px;
        y = py;
        geticonxy(iconx1, icony1);
    }

    public void geticonxy(float xxx, float yyy) {
        iconx = xxx;
        icony = yyy;
        iconx = (int) (iconx * scale);
        icony = (int) (icony * scale);
    }

    private void setimg(int i, int j, int li, int lj) {
        if (i > li) {
            img[0][0] = img[1][0];
            img[0][1] = img[1][1];
            try {
                img[1][0] = BitmapFactory.decodeStream(c.getAssets().open(getpicpath(i + 2, j + 1)));
            } catch (IOException ex) {
                if (img[1][0] != null) {
                    img[1][0].recycle();
                }
                img[1][0] = null;
            }
            try {
                img[1][1] = BitmapFactory.decodeStream(c.getAssets().open(getpicpath(i + 2, j + 2)));
            } catch (IOException ex) {
                if (img[1][1] != null) {
                    img[1][1].recycle();
                }
                img[1][1] = null;
            }
        }
        if (j > lj) {
            img[0][0] = img[0][1];
            img[1][0] = img[1][1];
            try {
                img[0][1] = BitmapFactory.decodeStream(c.getAssets().open(getpicpath(i + 1, j + 2)));
            } catch (IOException ex) {
                if (img[0][1] != null) {
                    img[0][1].recycle();
                }
                img[0][1] = null;
            }
            try {
                img[1][1] = BitmapFactory.decodeStream(c.getAssets().open(getpicpath(i + 2, j + 2)));
            } catch (IOException ex) {
                if (img[1][1] != null) {
                    img[1][1].recycle();
                }
                img[1][1] = null;
            }
        }
        if (j < lj) {
            img[0][1] = img[0][0];
            img[1][1] = img[1][0];
            try {
                img[0][0] = BitmapFactory.decodeStream(c.getAssets().open(getpicpath(i + 1, j + 1)));
            } catch (IOException ex) {
                if (img[0][0] != null) {
                    img[0][0].recycle();
                }
                img[0][0] = null;
            }
            try {
                img[1][0] = BitmapFactory.decodeStream(c.getAssets().open(getpicpath(i + 2, j + 1)));
            } catch (IOException ex) {
                if (img[1][0] != null) {
                    img[1][0].recycle();
                }
                img[1][0] = null;
            }
        }
        if (i < li) {
            img[1][0] = img[0][0];
            img[1][1] = img[0][1];
            try {
                img[0][0] = BitmapFactory.decodeStream(c.getAssets().open(getpicpath(i + 1, j + 1)));
            } catch (IOException ex) {
                if (img[0][0] != null) {
                    img[0][0].recycle();
                }
                img[0][0] = null;
            }
            try {
                img[0][1] = BitmapFactory.decodeStream(c.getAssets().open(getpicpath(i + 1, j + 2)));
            } catch (IOException ex) {
                if (img[0][1] != null) {
                    img[0][1].recycle();
                }
                img[0][1] = null;
            }
        }
//        try {
//            if ((0) < img.length && (0) < img[0].length) {
//                img[0][0] = BitmapFactory.decodeStream(c.getAssets().open(getstr(i + 1, j + 1));
//            }
//        } catch (IOException ex) {
//        }
//        try {
//            if ((0 + 1) < img.length && (0) < img[0].length) {
//                img[0 + 1][0] = BitmapFactory.decodeStream(c.getAssets().open(getstr(i + 2, j + 1));
//            }
//        } catch (IOException ex) {
//        }
//        try {
//            if ((0) < img.length && (0 + 1) < img[0].length) {
//                img[0][0 + 1] = BitmapFactory.decodeStream(c.getAssets().open(getstr(i + 1, j + 2));
//            }
//        } catch (IOException ex) {
//        }
//        try {
//            if ((0 + 1) < img.length && (0 + 1) < img[0].length) {
//                img[0 + 1][0 + 1] = BitmapFactory.decodeStream(c.getAssets().open(getstr(i + 2, j + 2));
//            }
//        } catch (IOException ex) {
//        }


    }

    private void setimg1(int i, int j, int lasti, int lastj) {
        try {
            if ((0) < img.length && (0) < img[0].length) {
                img[0][0] = BitmapFactory.decodeFile((getpicpath(i + 1, j + 1)));
            }
        } catch (Exception ex) {
        }
        try {
            if ((0 + 1) < img.length && (0) < img[0].length) {
                img[0 + 1][0] = BitmapFactory.decodeFile((getpicpath(i + 2, j + 1)));
            }
        } catch (Exception ex) {
        }
        try {
            if ((0) < img.length && (0 + 1) < img[0].length) {
                img[0][0 + 1] = BitmapFactory.decodeFile((getpicpath(i + 1, j + 2)));
            }
        } catch (Exception ex) {
        }
        try {
            if ((0 + 1) < img.length && (0 + 1) < img[0].length) {
                img[0 + 1][0 + 1] = BitmapFactory.decodeFile((getpicpath(i + 2, j + 2)));
            }
        } catch (Exception ex) {
        }
    }

    private void setnull(int ix, int jy) {
        ix = 0;
        jy = 0;
        if ((ix) < img.length && (jy) < img[0].length) {
            if (img[ix][jy] != null) {
                img[ix][jy].recycle();
            }
            img[ix][jy] = null;
        }
        if ((ix + 1) < img.length && (jy) < img[0].length) {
            if (img[ix + 1][jy] != null) {
                img[ix + 1][jy].recycle();
            }
            img[ix + 1][jy] = null;
        }
        if ((ix) < img.length && (jy + 1) < img[0].length) {
            if (img[ix][jy + 1] != null) {
                img[ix][jy + 1].recycle();
            }
            img[ix][jy + 1] = null;
        }
        if ((ix + 1) < img.length && (jy + 1) < img[0].length) {
            if (img[ix + 1][jy + 1] != null) {
                img[ix + 1][jy + 1].recycle();
            }
            img[ix + 1][jy + 1] = null;
        }
    }

    public void setlocation(Point p) {
    }

    private void getscales() {
        scales = new double[1];
        scales[0] = 1;
        lwscale=new double[1];
        lhscale=new double[1];
        lwscale[0]=lwscal;
        lhscale[0]=lhscal;
//        InputStream is = getClass().getResourceAsStream("/map/scale.ini");
//        InputStreamReader isr = null;
//        isr = new InputStreamReader(is);
//        int h1;
//        Vector sts = new Vector();
//        char[] ch = null;
//        try {
//            h1 = is.available();
//            ch = new char[h1];
//            isr.read(ch);
//        } catch (IOException ex) {
//        } finally {
//            try {
//                isr.close();
//            } catch (IOException ex) {
//            }
//            try {
//                is.close();
//            } catch (IOException ex) {
//            }
//        }
//        int k = 0;
//        if (ch != null) {
//            for (int p = 0; p < ch.length; p++) {
//                if (ch[p] == '\n') {
//                    k++;
//                }
//            }
//        }
//        scales = new double[k];
//        k = 0;
//        int o = 0;
//        for (int p = 0; p < ch.length; p++) {
//            if (ch[p] == '\n') {
//                scales[o++] = Double.parseDouble(new String(ch, k, p - k - 1));
//                k = p + 1;
//            }
//        }

    }

    public void locationchanged(Location l) {
        addLocation(l);
        onDraw();
    }

    public static class Statics {

        public static final int DrageMax = 4;
        public static boolean isPointer;
    }

    public static class keys {

        public static final int KEY_back = 7;
        public static final int KEY_LKEY = 8;
        public static final int KEY_RKEY = 9;
    }

    public void setfirstlocation(Location l) {
    	float xx = (float) ((l.getLongitude()-lastl.x) * lwscale[zooms]);
        float yy = (float) ((l.getLatitude()-lastl.y) * lhscale[zooms]*-1);
        xx=lastp.x+xx;
        yy=lastp.y+yy;
        if(checkposes((int)xx,(int)yy))
            changepose((int)xx,(int)yy);
        geticonxy(xx, yy);
        ppath.reset();
        ppath.moveTo(xx, yy);
        onDraw();
    }

public static PointF lastl=new PointF(63.63281250000000f,39.84228601734890f);
public static PointF lastp=new PointF(0,0);
//public static double lwscal=5825.422222222222;
//public static double lhscal=7171.198523629164;
public static double lwscal=5825.422222222222;
public static double lhscal=6859.497346982962;
public static PointF getxylocation(Location l) {
    float xx = (float) ((l.getLongitude()-lastl.x) * lwscal);
    float yy = (float) ((l.getLatitude()-lastl.y) * lhscal*-1);
    xx=lastp.x+xx;
    yy=lastp.y+yy;
    
    return new PointF(xx, yy);
}
public static PointF getxylocation(float longitude,float latitude) {
    float xx = (float) ((longitude-lastl.x) * lwscal);
    float yy = (float) ((latitude-lastl.y) * lhscal*-1);
    xx=lastp.x+xx;
    yy=lastp.y+yy;
    return new PointF(xx, yy);
}
    public void addLocation(Location l) {
    	if(!stoptr){
        float xx = (float) ((l.getLongitude()-lastl.x) * lwscale[zooms]);
        float yy = (float) ((l.getLatitude()-lastl.y) * lhscale[zooms]*-1);
        xx=lastp.x+xx;
        yy=lastp.y+yy;
        System.out.println(xx+"::::======+++++++++++++++++++++==:::"+yy);
        geticonxy(xx, yy);
        if(checkposes((int)xx,(int)yy))
        changepose((int)xx,(int)yy);
        ppath.lineTo(xx, yy);
        onDraw();
    	}
    	else{
    		setfirstlocation(l);
    	}
    }
}
