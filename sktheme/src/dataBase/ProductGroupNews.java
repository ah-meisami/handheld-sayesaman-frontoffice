package dataBase;

import java.util.ArrayList;
import android.content.ContentValues;
import android.database.Cursor;
import dataBase.DBUtil.TblFields;

public class ProductGroupNews extends Model {

	// Private Variables
	private int mGrpNewsID;
	private int mGrpID;
	private String mGrpNewsTitle;
	private String mGrpNewsDate;
	private String mGrpNewsSummery;
	private String mGrpNewsImageUrl;
	private String mGrpNewsPDFUrl;
	private String mTableName = "tblProdGrpNews";

	// empty Constructor
	public ProductGroupNews() {
	}

	// initial Constructor
	public ProductGroupNews(int grpNewsID, int grpID, String grpNewsTitle,
			String grpNewsDate, String grpNewsSummery, String grpNewsImageUrl,
			String grpNewsPDFUrl) {
		this.mGrpNewsID = grpNewsID;
		this.mGrpID = grpID;
		this.mGrpNewsTitle = grpNewsTitle;
		this.mGrpNewsDate = grpNewsDate;
		this.mGrpNewsSummery = grpNewsSummery;
		this.mGrpNewsImageUrl = grpNewsImageUrl;
		this.mGrpNewsPDFUrl = grpNewsPDFUrl;
	}

	// initial id_less Constructor
	public ProductGroupNews(int grpID, String grpNewsTitle, String grpNewsDate,
			String grpNewsSummery, String grpNewsImageUrl, String grpNewsPDFUrl) {
		this.mGrpID = grpID;
		this.mGrpNewsTitle = grpNewsTitle;
		this.mGrpNewsDate = grpNewsDate;
		this.mGrpNewsSummery = grpNewsSummery;
		this.mGrpNewsImageUrl = grpNewsImageUrl;
		this.mGrpNewsPDFUrl = grpNewsPDFUrl;
	}

	// Load From DB
	public void load() {
		String[] columns = { "GrpNewsID", "GrpID", "GrpNewsTitle",
				"GrpNewsDate", "GrpNewsSummery", "GrpNewsImageUrl",
				"GrpNewsPDFUrl" };
		String selection = "GrpNewsID = ?";
		String[] selectionArgs = { String.valueOf(getGrpNewsID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setGrpID(c.getInt(c.getColumnIndex("GrpID")));
				setGrpNewsTitle(c.getString(c.getColumnIndex("GrpNewsTitle")));
				setGrpNewsDate(c.getString(c.getColumnIndex("GrpNewsDate")));
				setGrpNewsSummery(c.getString(c
						.getColumnIndex("GrpNewsSummery")));
				setGrpNewsImageUrl(c.getString(c
						.getColumnIndex("GrpNewsImageUrl")));
				setGrpNewsPDFUrl(c.getString(c.getColumnIndex("GrpNewsPDFUrl")));
			}
		} catch (Exception e) {
		}
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("GrpNewsID", getGrpNewsID());
		values.put("GrpID", getGrpID());
		values.put("GrpNewsTitle", getGrpNewsTitle());
		values.put("GrpNewsDate", getGrpNewsDate());
		values.put("GrpNewsSummery", getGrpNewsSummery());
		values.put("GrpNewsImageUrl", getGrpNewsImageUrl());
		values.put("GrpNewsPDFUrl", getGrpNewsPDFUrl());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		} 
	}

	public void update(Boolean checkNullFields) {
		ContentValues dataToUpdate = new ContentValues();
		if (checkNullFields) {
			if (getGrpID() == 0)
				dataToUpdate.put("GrpID", getGrpID());
			if (getGrpNewsTitle() != null && getGrpNewsTitle() != "")
				dataToUpdate.put("GrpNewsTitle", getGrpNewsTitle());
			if (getGrpNewsDate() != null && getGrpNewsDate() != "")
				dataToUpdate.put("GrpNewsDate", getGrpNewsDate());
			if (getGrpNewsSummery() != null && getGrpNewsSummery() != "")
				dataToUpdate.put("GrpNewsSummery", getGrpNewsSummery());
			if (getGrpNewsImageUrl() != null && getGrpNewsImageUrl() != "")
				dataToUpdate.put("GrpNewsImageUrl", getGrpNewsImageUrl());
			if (getGrpNewsPDFUrl() != null && getGrpNewsPDFUrl() != "")
				dataToUpdate.put("GrpNewsPDFUrl", getGrpNewsPDFUrl());
		} else {
			dataToUpdate.put("GrpID", getGrpID());
			dataToUpdate.put("GrpNewsTitle", getGrpNewsTitle());
			dataToUpdate.put("GrpNewsDate", getGrpNewsDate());
			dataToUpdate.put("GrpNewsSummery", getGrpNewsSummery());
			dataToUpdate.put("GrpNewsImageUrl", getGrpNewsImageUrl());
			dataToUpdate.put("GrpNewsPDFUrl", getGrpNewsPDFUrl());
		}

		String whereClause = "GrpNewsID = ?";
		String[] whereArgs = { String.valueOf(getGrpNewsID()) };
		try {
			DataSourceTools.updateObject(mTableName, dataToUpdate, whereClause,
					whereArgs);
		} catch (Exception e) {
		} 
	}

	public void delete() {
		String whereClause = "GrpNewsID = ?";
		String[] whereArgs = { String.valueOf(getGrpNewsID()) };
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
		}
	}

	@Override
	public ArrayList<ProductGroupNews> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<ProductGroupNews> productGroupNewsList = new ArrayList<ProductGroupNews>();
		String selectQuery = super.gueryBuilder(fields, limits, limitNum,
				mTableName, sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					// set data row to product item
					ProductGroupNews productGroupNews = new ProductGroupNews();
					try {
						productGroupNews.setGrpNewsID(c.getInt(c.getColumnIndex("GrpNewsID")));
						productGroupNews.setGrpID(c.getInt(c.getColumnIndex("GrpID")));
						productGroupNews.setGrpNewsTitle(c.getString(c.getColumnIndex("GrpNewsTitle")));
						productGroupNews.setGrpNewsDate(c.getString(c.getColumnIndex("GrpNewsDate")));
						productGroupNews.setGrpNewsSummery(c.getString(c.getColumnIndex("GrpNewsSummery")));
						productGroupNews.setGrpNewsImageUrl(c.getString(c.getColumnIndex("GrpNewsImageUrl")));
						productGroupNews.setGrpNewsPDFUrl(c.getString(c.getColumnIndex("GrpNewsPDFUrl")));
						
					} catch (Exception ex) {
					}
					// Adding contact to list
					productGroupNewsList.add(productGroupNews);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		}
		return productGroupNewsList;
	}
	
	public int Count(TblFields field, ArrayList<Limit> limits) {
		return super.Count(field, mTableName, limits);
	}

	// Accessor & mutator Methods
	public int getGrpNewsID() {
		return mGrpNewsID;
	}

	public void setGrpNewsID(int grpNewsID) {
		mGrpNewsID = grpNewsID;
	}

	public int getGrpID() {
		return mGrpID;
	}

	public void setGrpID(int grpID) {
		mGrpID = grpID;
	}

	public String getGrpNewsTitle() {
		return mGrpNewsTitle;
	}

	public void setGrpNewsTitle(String grpNewsTitle) {
		mGrpNewsTitle = grpNewsTitle;
	}

	public String getGrpNewsDate() {
		return mGrpNewsDate;
	}

	public void setGrpNewsDate(String grpNewsDate) {
		mGrpNewsDate = grpNewsDate;
	}

	public String getGrpNewsSummery() {
		return mGrpNewsSummery;
	}

	public void setGrpNewsSummery(String grpNewsSummery) {
		mGrpNewsSummery = grpNewsSummery;
	}

	public String getGrpNewsImageUrl() {
		return mGrpNewsImageUrl;
	}

	public void setGrpNewsImageUrl(String grpNewsImageUrl) {
		mGrpNewsImageUrl = grpNewsImageUrl;
	}

	public String getGrpNewsPDFUrl() {
		return mGrpNewsPDFUrl;
	}

	public void setGrpNewsPDFUrl(String grpNewsPDFUrl) {
		mGrpNewsPDFUrl = grpNewsPDFUrl;
	}
}
