package dataBase;

import com.example.sktheme.R;
import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.Toast;

public class Main extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);		
		setContentView(R.layout.test);
//		
//		Button b = (Button) findViewById(R.id.btn_go);
//		b.setOnClickListener(new OnClickListener() {
//			@Override
//			public void onClick(View arg0) {
//				setContentView(R.layout.test_v2);				
//			}
//		});		
		setContentView(com.example.sktheme.R.layout.test);
		initApp();			
	}
	@Override
	public void onConfigurationChanged(Configuration newConfig) {
	    super.onConfigurationChanged(newConfig);
	    // Checks the orientation of the screen
	    if (newConfig.orientation == Configuration.ORIENTATION_LANDSCAPE) {
	        Toast.makeText(this, "landscape", Toast.LENGTH_SHORT).show();
	    } else if (newConfig.orientation == Configuration.ORIENTATION_PORTRAIT){
	        Toast.makeText(this, "portrait", Toast.LENGTH_SHORT).show();
	    }
	}
	// initial Application
	public void initApp() {
		
		// initial Database
//		AppConfig.mDBHandler = new DatabaseHandler(this);
//		ArrayList<TblFields> fields = new ArrayList<DBUtil.TblFields>();
//		fields.add(TblFields.ProdID);
//		ArrayList<Product> pl = new Product().getAll(fields,null,null,null);		
	}
	
}
