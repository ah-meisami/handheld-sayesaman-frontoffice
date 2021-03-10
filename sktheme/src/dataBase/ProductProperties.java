package dataBase;

import java.util.ArrayList;
import dataBase.DBUtil.LimitType;
import dataBase.DBUtil.TblFields;
import android.content.ContentValues;
import android.database.Cursor;

public class ProductProperties extends Model {

	// private Variables
	private int mAID;
	private String mProdPropertiesDesc;
	private short mValueSelectType;
	private int mGrpID;
	private String mProdPropertiesComment;
	// table name in DB
	private String mTableName = "tblProdPropertiesDesc";

	// empty Constructor
	public ProductProperties() {
	}

	// initial Constructor
	public ProductProperties(int mAID, String mProdPropertiesDesc,
			short mValueSelectType, int mGrpID, String mProdPropertiesComment) {
		this.mAID = mAID;
		this.mProdPropertiesDesc = mProdPropertiesDesc;
		this.mValueSelectType = mValueSelectType;
		this.mGrpID = mGrpID;
		this.mProdPropertiesComment = mProdPropertiesComment;
	}

	// initial Id_less Constructor
	public ProductProperties(String mProdPropertiesDesc,
			short mValueSelectType, int mGrpID, String mProdPropertiesComment) {
		this.mProdPropertiesDesc = mProdPropertiesDesc;
		this.mValueSelectType = mValueSelectType;
		this.mGrpID = mGrpID;
		this.mProdPropertiesComment = mProdPropertiesComment;
	}

	// Load From DB
	public void load() {
		String[] columns = { "AID", "ProdPropertiesDesc", "ValueSelectType",
				"GrpID", "ProdPropertiesComment" };
		String selection = "AID = ?";
		String[] selectionArgs = { String.valueOf(getAID()) };
		Cursor c = null;
		try {
			c = DataSourceTools.findObject(mTableName, columns, selection,
					selectionArgs);
			if (c.moveToFirst()) {
				setProdPropertiesDesc(c.getString(c
						.getColumnIndex("ProdPropertiesDesc")));
				setValueSelectType(c.getShort(c
						.getColumnIndex("ValueSelectType")));
				setGrpID(c.getInt(c.getColumnIndex("GrpID")));
				setProdPropertiesComment(c.getString(c
						.getColumnIndex("ProdPropertiesComment")));	
			}
		} catch (Exception e) {
		} 
	}

	public void save() {
		ContentValues values = new ContentValues();
		values.put("AID", getAID());
		values.put("ProdPropertiesDesc", getProdPropertiesDesc());
		values.put("ValueSelectType", getValueSelectType());
		values.put("GrpID", getGrpID());
		values.put("ProdPropertiesComment", getProdPropertiesComment());
		try {
			DataSourceTools.saveObject(mTableName, null, values);
		} catch (Exception e) {
		} 
	}

	public void update(Boolean checkNullFields) {
		ContentValues values = new ContentValues();
		if (checkNullFields) {
			if (getProdPropertiesDesc() != null
					&& getProdPropertiesDesc() != "")
				values.put("ProdPropertiesDesc", getProdPropertiesDesc());
			if (getValueSelectType() != 0)
				values.put("ValueSelectType", getValueSelectType());
			if (getGrpID() != 0)
				values.put("GrpID", getGrpID());
			if (getProdPropertiesComment() != null
					&& getProdPropertiesComment() != "")
				values.put("ProdPropertiesComment", getProdPropertiesComment());
		} else {
			values.put("ProdPropertiesDesc", getProdPropertiesDesc());
			values.put("ValueSelectType", getValueSelectType());
			values.put("GrpID", getGrpID());
			values.put("ProdPropertiesComment", getProdPropertiesComment());
		}

		String whereClause = "AID = ?";
		String[] whereArgs = { String.valueOf(getAID()) };
		try {
			DataSourceTools.updateObject(mTableName, values, whereClause,
					whereArgs);
		} catch (Exception e) {
		}
	}

	public void delete() {
		String whereClause = "AID = ?";
		String[] whereArgs = { String.valueOf(getAID()) };
		try {
			DataSourceTools.deleteObject(mTableName, whereClause, whereArgs);
		} catch (Exception e) {
		}
	}

	public ArrayList<ProductProperties> getAll(ArrayList<TblFields> fields,
			ArrayList<Limit> limits, String limitNum, ArrayList<Sort> sorts) {

		ArrayList<ProductProperties> productPropertiesList = new ArrayList<ProductProperties>();
		String selectQuery  = super.gueryBuilder(fields, limits, limitNum, mTableName,sorts);
		Cursor c = null;
		try {
			c = DataSourceTools.findAllObject(selectQuery);
			if (c.moveToFirst()) {
				do {
					ProductProperties productProperties = new ProductProperties();
					// set data row to product group item
					try{
					productProperties.setAID(c.getInt(c.getColumnIndex("AID")));
					productProperties.setProdPropertiesDesc(c.getString(c
							.getColumnIndex("ProdPropertiesDesc")));
					productProperties.setValueSelectType(c.getShort(c
							.getColumnIndex("ValueSelectType")));
					productProperties.setGrpID(c.getInt(c
							.getColumnIndex("GrpID")));
					productProperties.setProdPropertiesComment(c.getString(c
							.getColumnIndex("ProdPropertiesComment")));
					}catch(Exception ex){						
					}
					// Adding contact to list
					productPropertiesList.add(productProperties);
				} while (c.moveToNext());
			}
		} catch (Exception e) {
		} 
		return productPropertiesList;
	}
	
	public int Count(TblFields field, ArrayList<Limit> limits){
		return super.Count(field, mTableName, limits);
	}
	public ArrayList<ProductPropertiesHeader> getProductProperties(int productID){
		ArrayList<ProductPropertiesHeader> productPropertiesHeaderList = new ArrayList<ProductPropertiesHeader>();		
		ArrayList<TblFields> fields = new ArrayList<DBUtil.TblFields>();		
		fields.add(TblFields.ProdID);
		fields.add(TblFields.PropertiesID);
		fields.add(TblFields.PropertiesVales);
		ArrayList<Limit> limits = new ArrayList<Limit>();
		limits.add(new Limit(TblFields.ProdID, String.valueOf(productID), LimitType.ItIs, null));
		ArrayList<ProductPropertiesValue> productPropertiesValueList =new ProductPropertiesValue().getAll(fields, limits, null, null);
	    ArrayList<ProductProperties> productPropertiesList = new ArrayList<ProductProperties>();
	    ProductProperties pp;
	    ArrayList<ProductPropertiesGroup> ppGroupList = new ArrayList<ProductPropertiesGroup>();
	    ProductPropertiesGroup ppGroup;
	    ProductPropertiesHeader ppheader;
	    ProductPropertiesItem ppItem;
		for(ProductPropertiesValue ppvalue : productPropertiesValueList){
			pp = new ProductProperties();
			pp.setAID(ppvalue.getPropertiesID());
			pp.load();
			productPropertiesList.add(pp);	
			ppGroup = new ProductPropertiesGroup();
    		ppGroup.setGrpID(pp.getGrpID());    		
    		if(!ppGroupList.contains(ppGroup)){
    			ppGroup.load();
    			ppGroupList.add(ppGroup);   
    		    ppheader = new ProductPropertiesHeader();
    		    ppheader.setProductPropertiesGrpID(ppGroup.getGrpID());
    		    ppheader.setTitle(ppGroup.getGrpName());
    		    productPropertiesHeaderList.add(ppheader);
    		}
    		int i=0;
    		for(ProductPropertiesHeader pph : productPropertiesHeaderList){
    			if(pph.getProductGrpID() == pp.getGrpID()){
    				ppItem = new ProductPropertiesItem();
    				ppItem.setPropertiesTitle(pp.getProdPropertiesDesc());
    				ppItem.setPropertiesValue(ppvalue.getPropertiesVales());
    				productPropertiesHeaderList.get(i).getItems().add(ppItem);    				
    			}
    			i++;
    		}
		}					
		return productPropertiesHeaderList;
	}

	// getting AID
	public int getAID() {
		return mAID;
	}

	// setting AID
	public void setAID(int mAID) {
		this.mAID = mAID;
	}

	// getting ProdPropertiesDesc
	public String getProdPropertiesDesc() {
		return mProdPropertiesDesc;
	}

	// setting ProdPropertiesDesc
	public void setProdPropertiesDesc(String mProdPropertiesDesc) {
		this.mProdPropertiesDesc = mProdPropertiesDesc;
	}

	// getting ValueSelectType
	public short getValueSelectType() {
		return mValueSelectType;
	}

	// setting ValueSelectType
	public void setValueSelectType(short mValueSelectType) {
		this.mValueSelectType = mValueSelectType;
	}

	// getting GrpID
	public int getGrpID() {
		return mGrpID;
	}

	// setting GrpID
	public void setGrpID(int mGrpID) {
		this.mGrpID = mGrpID;
	}

	// getting ProdPropertiesComment
	public String getProdPropertiesComment() {
		return mProdPropertiesComment;
	}

	// setting ProdPropertiesComment
	public void setProdPropertiesComment(String mProdPropertiesComment) {
		this.mProdPropertiesComment = mProdPropertiesComment;
	}
	@Override
	public boolean equals(Object o) {
		if(o instanceof ProductProperties){
			ProductProperties pp = (ProductProperties)o;
			if(this.getAID() == pp.getAID()){
				return true;
			}
		}else{
			return false;
		}
		return false;
	}	
}
