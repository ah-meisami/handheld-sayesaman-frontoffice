package webservice;

import android.app.AlertDialog;

public class Caller extends Thread {
	public CallSoap cs;
	public int a;
	protected AlertDialog ad;

	public void run() {
		try {
			cs = new CallSoap();
			cs.Call(a);
		} catch (Exception ex) {
			StaticWebService.state = ex.getMessage();
		}
	}
}
