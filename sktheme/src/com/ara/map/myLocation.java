/*
; * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ara.map;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import java.util.Vector;

/**
 * 
 * @author ENAKHI
 */
public class myLocation {

	Location startlocation;
	Location curentlocation;
	Vector<mylocationchange> v1;
	LocationManager lmg;

	private myLocation(Context c) {
		LocationManager locationManager = (LocationManager) c
				.getSystemService(Context.LOCATION_SERVICE);
		GPSLocationListener locationListener = new GPSLocationListener();
		locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0,
				0f, locationListener);
		lmg = locationManager;
		Location l = locationManager
				.getLastKnownLocation(LocationManager.GPS_PROVIDER);
		float x = (float) l.getLatitude();
		float y = (float) l.getLongitude();
		startlocation = l;
		v1 = new Vector<mylocationchange>();
	}

	public static myLocation getMylocation(Context c) {
		try {
			return new myLocation(c);
		} catch (Exception e) {
			return null;
		}
	}

	public void addlocationChangelisttener(mylocationchange c) {
		v1.add(c);
	}

	private class GPSLocationListener implements LocationListener {

		public GPSLocationListener() {
		}

		public void onLocationChanged(Location arg0) {
			try {
				for (mylocationchange object : v1) {
					object.locationchanged(arg0);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}

		public void onStatusChanged(String arg0, int arg1, Bundle arg2) {
		}

		public void onProviderEnabled(String arg0) {
		}

		public void onProviderDisabled(String arg0) {
		}
	}
}
