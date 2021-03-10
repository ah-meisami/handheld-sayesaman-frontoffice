package org.sayesaman.bpp4.updatechecker;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.Log;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;

/**
 * DO NOT USE ON YOUR OWN. All calls are handled through UpdateChecker.
 *
 * @author Raghav Sood
 * @version API 2
 * @since API 1
 */
public class DownloadManager extends AsyncTask<String, Integer, String> {
    private ProgressDialog progressDialog;
    private String TAG = "***************** UpdateDownloadManager";
    private boolean installAfterDownload = true;
    private boolean downloaded = false;
    private Context mContext;

    String apkPath = Environment.getExternalStorageDirectory().getPath() + "/App/download/";
    public DownloadManager(Context context, boolean installAfterDownload, String apkName) {
        mContext = context;
        this.installAfterDownload = installAfterDownload;

        File folder = new File(apkPath);
        if (!folder.exists()) {
            folder.mkdirs();
        }

        apkPath = apkPath + apkName;
        Log.d(TAG, apkPath);
    }

    private boolean isOnline() {
        try {
            ConnectivityManager cm = (ConnectivityManager) mContext.getSystemService(Context.CONNECTIVITY_SERVICE);
            NetworkInfo netInfoMob = cm.getNetworkInfo(cm.TYPE_MOBILE);
            NetworkInfo netInfoWifi = cm.getNetworkInfo(cm.TYPE_WIFI);
            if ((netInfoMob != null || netInfoWifi != null) && (netInfoMob.isConnectedOrConnecting() || netInfoWifi.isConnectedOrConnecting())) {
                return true;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Downloads the update file in a background task
     *
     * @since API 1
     */
    @Override
    protected String doInBackground(String... sUrl) {
        if (isOnline()) {
            try {
                URL url = new URL(sUrl[0]);
                URLConnection connection = url.openConnection();
                connection.connect();
                // this will be useful so that you can show a typical 0-100% progress bar
                int fileLength = connection.getContentLength();

                // download the file
                InputStream input = new BufferedInputStream(url.openStream());
                OutputStream output = new FileOutputStream(apkPath);

                byte data[] = new byte[1024];
                long total = 0;
                int count;
                while ((count = input.read(data)) != -1) {
                    total += count;
                    // publishing the progress....
                    publishProgress((int) (total * 100 / fileLength));
                    output.write(data, 0, count);
                }

                output.flush();
                output.close();
                input.close();
            } catch (IOException e) {
                Log.e(TAG, "There was an IOException when downloading the update file");
            }
        }
        return null;
    }

    /**
     * Updates our progress bar with the download information
     *
     * @since API 1
     */
    @Override
    protected void onProgressUpdate(Integer... changed) {
        progressDialog.setProgress(changed[0]);
    }

    /**
     * Sets up the progress dialog to notify user of download progress
     *
     * @since API 1
     */
    @Override
    protected void onPreExecute() {
        progressDialog = new ProgressDialog(mContext);
        progressDialog.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
        progressDialog.setMessage("Downloading ...");
        progressDialog.setCancelable(false);
        progressDialog.show();
    }

    /**
     * Dismissed progress dialog, calls install() if installAfterDownload is true
     *
     * @since API 1
     */
    @Override
    protected void onPostExecute(String result) {
        progressDialog.dismiss();
        downloaded = true;
        if (installAfterDownload) {
            install();
        }
    }

    /**
     * Launches an Intent to install the apk update.
     *
     * @since API 2
     */
    public void install() {
        if (downloaded) {
            Uri fileLoc = Uri.fromFile(new File(apkPath));
            Intent intent = new Intent(Intent.ACTION_VIEW);
            intent.setDataAndType(fileLoc, "application/vnd.android.package-archive");
            mContext.startActivity(intent);
        }
    }
}
