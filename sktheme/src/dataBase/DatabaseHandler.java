package dataBase;

import android.content.Context;
import android.content.res.AssetManager;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class DatabaseHandler extends SQLiteOpenHelper {

	// All Static variables
	// Database Version
	private static final int DATABASE_VERSION = 1;
	// Database Name
	private static final String DATABASE_NAME = AppConfig.DBName;
	public static DatabaseContext mContext;
	private SQLiteDatabase mDB;

	public DatabaseHandler(Context context) {
		super((mContext = new DatabaseContext(context)), DATABASE_NAME, null,
				DATABASE_VERSION);
		// deleteDBFile();
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		mDB = db;
		executeSQLScript(db, "testDB.sql");
		Log.d("DatabaseHandler onCreate:", DATABASE_NAME);
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		if (newVersion > oldVersion) {
			switch (oldVersion) {
			case 1:
				executeSQLScript(db, "update_v2.sql");
			case 2:
				executeSQLScript(db, "update_v3.sql");
			}
		}
	}

	private void executeSQLScript(SQLiteDatabase database, String dbname) {
		try {
			AssetManager assetManager = mContext.getAssets();
			InputStream is = assetManager.open(dbname);
			ByteArrayOutputStream os = new ByteArrayOutputStream(1024);
			byte[] buffer = new byte[1024];
			int len;
			try {
				while ((len = is.read(buffer)) >= 0) {
					os.write(buffer, 0, len);
				}
			} catch (IOException e) {
			}
			is.close();
			os.close();
			String text = new String(os.toByteArray());
			String delims = "[)][;]";
			String[] createScript = text.split(delims);
			for (int i = 0; i < createScript.length; i++) {
				String sqlStatement = createScript[i].trim();
				if (sqlStatement.length() > 0) {
					database.execSQL(sqlStatement + ");");
				}
			}
		} catch (SQLException ex) {		
		} catch (Exception ex) {
		}
	}

//	// delete DB File
//	public void deleteDBFile() {
//		ContextWrapper cw = new ContextWrapper(DatabaseHandler.mContext);
//		File dbFile = cw.getDatabasePath(AppConfig.DBName);
//		SQLiteDatabase.deleteDatabase(dbFile);
//	}

	public SQLiteDatabase getDB() {
		return mDB;
	}

	public void setDB(SQLiteDatabase mDB) {
		this.mDB = mDB;
	}
}
