package org.sayesaman.tut1.sakhtemankala;

import android.app.Activity;
import android.database.Cursor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.SimpleCursorAdapter;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.Fullscreen;
import com.googlecode.androidannotations.annotations.ItemSelect;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;
import org.sayesaman.app4.SalePathAdapter;
import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.SalePath;

import java.util.ArrayList;

@EActivity(R.layout.tut1)
@NoTitle
@Fullscreen
public class MyActivity extends Activity {

}