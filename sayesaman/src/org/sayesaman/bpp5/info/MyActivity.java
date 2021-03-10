package org.sayesaman.bpp5.info;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.dialog.Statics;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ameysami on 8/28/13.
 */
@EActivity(R.layout.bpp5)
@NoTitle
@Fullscreen
public class MyActivity extends Activity {
    @ViewById
    ImageView bpp5_gallery1;
//    @ViewById
//    ImageView bpp5_gallery2;

    @ViewById
    TextView bpp5_desc1;
    @ViewById
    TextView bpp5_desc2;
    @ViewById
    TextView bpp5_desc3;
    @ViewById
    TextView bpp5_desc4;
    @ViewById
    TextView bpp5_desc5;

    @AfterViews
    public void after() {
        bpp5_desc1.setTypeface(Statics.getFontTypeFace_Titr());
        bpp5_desc2.setTypeface(Statics.getFontTypeFace_ZarBold());
        bpp5_desc3.setTypeface(Statics.getFontTypeFace_ZarBold());
        bpp5_desc4.setTypeface(Statics.getFontTypeFace_ZarBold());
        bpp5_desc5.setTypeface(Statics.getFontTypeFace_Titr());

        AsyncTaskRunner runner = new AsyncTaskRunner();
        runner.execute(1);

    }

    private class AsyncTaskRunner extends AsyncTask<Integer, Void, List<Bitmap>> {
        @Override
        protected List<Bitmap> doInBackground(Integer... params) {
            List<Bitmap> list = new ArrayList<Bitmap>();

            /*
            try {
                Thread.sleep(5000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            */

            BitmapFactory.Options bitmapOptions1 = new BitmapFactory.Options();
            Bitmap bitmap;

//            bitmapOptions1.inSampleSize = 2;
//            bitmap = BitmapFactory.decodeResource(getResources(), R.drawable.bpp5_gallery11, bitmapOptions1);
//            list.add(bitmap);

            bitmapOptions1.inSampleSize = 1;
            bitmap = BitmapFactory.decodeResource(getResources(), R.drawable.bpp5_gallery2, bitmapOptions1);
            list.add(bitmap);

            return list;
        }

        @Override
        protected void onPostExecute(List<Bitmap> list) {
            bpp5_gallery1.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT));
            bpp5_gallery1.setImageBitmap(list.get(0));

//            bpp5_gallery2.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT));
//            bpp5_gallery2.setImageBitmap(list.get(1));
        }
    }
}
