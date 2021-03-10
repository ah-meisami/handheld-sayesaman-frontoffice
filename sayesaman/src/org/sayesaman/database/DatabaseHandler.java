package org.sayesaman.database;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import android.widget.Toast;

import com.googlecode.androidannotations.annotations.EApplication;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * Created with IntelliJ IDEA.
 * User: a_meysami
 * Date: 12/6/12
 * Time: 4:46 PM
 * To change this template use File | Settings | File Templates.
 */
@EApplication
public class DatabaseHandler extends Application {
    private String currentDatabasePathIfExist;
    private SQLiteDatabase sqLiteDatabase;
    public Context context;

    @Override
    public void onCreate() {
        context = (Context) getApplicationContext(); //means :: context = this;

        currentDatabasePathIfExist = this.getCurrentDatabasePathIfExist();
        if (currentDatabasePathIfExist.equals("")) {
//            newTestingSqliteAdd();
        }

        open();
    }

    public void newTestingSqliteAdd() {
        try {
            currentDatabasePathIfExist = this.copyFromAssetToSDCardForProgramming();
            this.onCreate();//we have to call this once againg to initialize previous objects
            Toast.makeText(context, "عملیات با موفقیت به پایان رسید .", Toast.LENGTH_SHORT).show();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void newTestingSqliteRemove() {
        newTestingSqliteRemove2();

        currentDatabasePathIfExist = getCurrentDatabasePathIfExist();
        if (currentDatabasePathIfExist.equals(""))
            Toast.makeText(context, "فایلی برای حذف یافت نشد.", Toast.LENGTH_SHORT).show();
        else {
            File file = new File(currentDatabasePathIfExist);
            file.delete();
            this.onCreate();//we have to call this once againg to initialize previous objects
            Toast.makeText(context, "عملیات با موفقیت به پایان رسید .", Toast.LENGTH_SHORT).show();
        }
    }

    public void newTestingSqliteRemove2() {
        File dir = new File("/sdcard/");
        File[] foundFiles = dir.listFiles(new FilenameFilter() {
            @Override
            public boolean accept(File file, String s) {
                return s.endsWith("journal");
            }
        });

        for (File file : foundFiles) {
            file.delete();
        }
    }

    public String getCurrentDatabasePathIfExist() {
        String fileName = "";

        File dir = new File("/sdcard/");
        File[] foundFiles = dir.listFiles(new FilenameFilter() {
            @Override
            public boolean accept(File file, String s) {
                return s.endsWith(".sqlite");
            }
        });

        for (File file : foundFiles) {
            fileName = "/sdcard/" + file.getName();
        }

        return fileName;
    }

    public String copyFromAssetToSDCardForProgramming() throws IOException {
        AssetManager assetManager = context.getAssets();
        InputStream myInput = assetManager.open("13920514-900.sqlite"); //Open your local sqLiteDatabase as the input stream
        String outFileName = "/sdcard/13920514-900.sqlite";             // SalePath to the just created empty sqLiteDatabase
        OutputStream myOutput = new FileOutputStream(outFileName);      //Open the empty sqLiteDatabase as the output stream

        byte[] buffer = new byte[1024];                                 //transfer bytes from the inputfile to the outputfile
        int length;
        while ((length = myInput.read(buffer)) > 0) {
            myOutput.write(buffer, 0, length);
        }

        //Close the streams
        myOutput.flush();
        myOutput.close();
        myInput.close();

        return outFileName;
    }

    public Cursor rawQuery(String qry, String[] args) {
        Log.d("@sayesaman", qry);
        sqLiteDatabase.beginTransaction();
        final Cursor cursor = sqLiteDatabase.rawQuery(qry, args);
        sqLiteDatabase.endTransaction();
        return cursor;
    }

    public SQLiteDatabase getDatabaseHandler() {
        return sqLiteDatabase;
    }

    public void open() {
        if (currentDatabasePathIfExist == null)
            onCreate();
        sqLiteDatabase = SQLiteDatabase.openDatabase(currentDatabasePathIfExist, null, 0);
    }

    public void close() {
        sqLiteDatabase.close();
    }

    public boolean isConnected() {
        boolean existDatabaseFileInRoot = false;

        if (currentDatabasePathIfExist == null) onCreate();

        //in some cases this check is required
        // (suppose mobile app is running without any database file
        // and suddenly the user copied a new database file to tablet device
        if (currentDatabasePathIfExist.equals("")) onCreate();


        if (currentDatabasePathIfExist.equals(""))
            existDatabaseFileInRoot = false;
        else
            existDatabaseFileInRoot = true;

        if (!existDatabaseFileInRoot) Toast.makeText(context, "فایل مسیر یافت نشد.", Toast.LENGTH_SHORT).show();

        return existDatabaseFileInRoot;
    }
}
