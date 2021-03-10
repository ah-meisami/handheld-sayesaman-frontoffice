//package webservice;
//
//import android.os.Bundle;
//import android.app.Activity;
//import android.app.AlertDialog;
//import android.view.Menu;
//import android.view.View;
//import android.view.View.OnClickListener;
//import android.widget.Button;
//import android.widget.EditText;
//
//public class MainActivity extends Activity {
//	public static String rslt = "";
//	@Override
//	protected void onCreate(Bundle savedInstanceState) {
//		super.onCreate(savedInstanceState);
//		setContentView(R.layout.main);
//		Button b1 = (Button) findViewById(R.id.button1);
//		final AlertDialog ad = new AlertDialog.Builder(this).create();
//
//		b1.setOnClickListener(new OnClickListener() {
//			@Override
//			public void onClick(View arg0) {
//				try {
//					EditText ed1 = (EditText) findViewById(R.id.editText1);
//					int a = Integer.parseInt(ed1.getText().toString());
//					rslt = "Start";
//					Caller c =new Caller();
//					c.a = a;
//					c.join();
//					c.start();
//					while (rslt == "Start") {	
//						try{
//							Thread.sleep(10);
//						}catch(Exception ex){}
//					}				
//					ad.setTitle("OUTPUT OF getProduct");
//					ad.setMessage(rslt);
//				} catch (Exception ex) {
//					ad.setTitle("Error!");
//					ad.setMessage(ex.toString());
//				}
//				ad.show();
//			}
//		});
//	}
//
//	@Override
//	public boolean onCreateOptionsMenu(Menu menu) {
//		// Inflate the menu; this adds items to the action bar if it is present.
//		getMenuInflater().inflate(R.menu.main, menu);
//		return true;
//	}
//}
