package com.example.sktheme;

import java.io.IOException;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

public class imagefactory {
	public static Bitmap decodeSampledBitmapFromByte(byte[] b,
	        int reqWidth, int reqHeight) {

	    // First decode with inJustDecodeBounds=true to check dimensions
	    final BitmapFactory.Options options = new BitmapFactory.Options();
	    options.inJustDecodeBounds = true;
	    BitmapFactory.decodeByteArray(b, 0, b.length, options);

	    // Calculate inSampleSize
	    options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);

	    // Decode bitmap with inSampleSize set
	    options.inJustDecodeBounds = false;
	    return BitmapFactory.decodeByteArray(b, 0, b.length, options);
	}
	public static Bitmap decodeSampledBitmapFromResource(Resources res, int resId,
	        int reqWidth, int reqHeight) {
int k=reqWidth;
	    // First decode with inJustDecodeBounds=true to check dimensions
	    final BitmapFactory.Options options = new BitmapFactory.Options();
	    options.inJustDecodeBounds = true;
	    BitmapFactory.decodeResource(res, resId, options);

	    // Calculate inSampleSize
	    options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
	    // Decode bitmap with inSampleSize set
	    options.inJustDecodeBounds = false;
	    Bitmap b=BitmapFactory.decodeResource(res, resId, options);
	    if(b.getHeight()>b.getWidth())
	    	reqWidth=(int) (reqWidth*(b.getWidth()/(float)b.getHeight()));
	    
	    int newj=(int) ((b.getHeight()*(float)reqWidth)/b.getWidth());
	    if(newj>k)
			newj=k;
		if(reqWidth>k)
			reqWidth=k;
		return Bitmap.createScaledBitmap(b, reqWidth, newj,false);
	}
	public static int calculateInSampleSize(
            BitmapFactory.Options options, int reqWidth, int reqHeight) {
    // Raw height and width of image
    final int height = options.outHeight;
    final int width = options.outWidth;
    int inSampleSize = 1;

    if (height > reqHeight || width > reqWidth) {

        // Calculate ratios of height and width to requested height and width
        final int heightRatio = Math.round((float) height / (float) reqHeight);
        final int widthRatio = Math.round((float) width / (float) reqWidth);

        // Choose the smallest ratio as inSampleSize value, this will guarantee
        // a final image with both dimensions larger than or equal to the
        // requested height and width.
        inSampleSize = heightRatio < widthRatio ? heightRatio : widthRatio;
    }

    return inSampleSize;
}
	public static Bitmap decodeSampledBitmapFormAssest(Context c,String string, int i,
			int j) throws IOException {
		int k=i;
		Bitmap b=BitmapFactory.decodeFile(statics.getFilePath()+(string));
		if(b==null)
			b= BitmapFactory.decodeResource(c.getResources(), R.drawable.no_pic1);
		if(b.getHeight()>b.getWidth())
			i=(int) (i*(b.getWidth()/(float)b.getHeight()));
		int newj=(int) ((b.getHeight()*(float)i)/b.getWidth());
		if(newj>k)
			newj=k;
		if(i>k)
			i=k;
		return Bitmap.createScaledBitmap(b, i, newj,false);
	}
	public static Bitmap decodeSampledBitmapFormAssest(Context context,
			String getpicpath) throws IOException {
		Bitmap b=BitmapFactory.decodeFile(statics.getFilePath()+(getpicpath));
		if(b==null)
			return BitmapFactory.decodeResource(context.getResources(), R.drawable.no_pic1);
		return b; 
	}
}
