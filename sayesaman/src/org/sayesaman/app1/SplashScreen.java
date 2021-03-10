package org.sayesaman.app1;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.dialog.Statics;

/**
 * Created with IntelliJ IDEA.
 * User: a_meysami
 * Date: 11/26/12
 * Time: 8:49 AM
 * http://www.androidhive.info/2013/07/how-to-implement-android-app1-screen-2/
 * http://mkapur.com/android-fancy-animated-app1-screen/
 */
@EActivity(R.layout.app1)
@NoTitle
@Fullscreen
public class SplashScreen extends Activity {
    private static int SPLASH_TIME_OUT = 3000;

    @AfterViews
    void afterViews() {
        Statics statics = new Statics();
        statics.setContext(getApplicationContext());

        startAnimations();
        startMainActivityAfterDelay();
    }

    @ViewById(R.id.lin_lay)
    LinearLayout l;

    @ViewById(R.id.logo)
    ImageView iv;

    private void startAnimations() {
        Animation anim = AnimationUtils.loadAnimation(this, R.anim.app1_alpha);
        anim.reset();
        l.clearAnimation();
        l.startAnimation(anim);

        anim = AnimationUtils.loadAnimation(this, R.anim.app1_translate);
        anim.reset();
        iv.clearAnimation();
        iv.startAnimation(anim);
    }

    private void startMainActivityAfterDelay() {
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                // This method will be executed once the timer is over
                // Start your databaseService main activity
                Intent i = new Intent(SplashScreen.this, org.sayesaman.app2.MainActivity_.class);
                startActivity(i);

                // close this activity
                finish();
            }
        }, SPLASH_TIME_OUT);
    }
}