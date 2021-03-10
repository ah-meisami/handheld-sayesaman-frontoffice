package org.sayesaman.util.viewpagerimagegallery;
/*
* http://manishkpr.webheavens.com/android-viewpagerimagegallery-as-image-slide-gallery-swipe-gallery/
* */

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import org.sayesaman.R;

public class MainActivity extends Activity {
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.viewpagerimagegallery_activity);

        ViewPager viewPager = (ViewPager) findViewById(R.id.view_pager);
        ImageAdapter adapter = new ImageAdapter(this);
        viewPager.setAdapter(adapter);
    }
}
