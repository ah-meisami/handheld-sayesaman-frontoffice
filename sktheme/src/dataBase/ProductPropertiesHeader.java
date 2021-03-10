package dataBase;

import java.util.ArrayList;

public class ProductPropertiesHeader {
	
	// private variables
	private String mTitle;
	private int mProductPropertiesGrpID;
	private ArrayList<ProductPropertiesItem> mItems=new ArrayList<ProductPropertiesItem>();
	
	// Constructors
	public ProductPropertiesHeader(){		
	}
	
	public ProductPropertiesHeader(int mProductPropertiesGrpID){
		this.setProductPropertiesGrpID(mProductPropertiesGrpID);
	}
	
	public ProductPropertiesHeader(String mTitle, int mProductPropertiesGrpID){
		this.setTitle(mTitle);
		this.setProductPropertiesGrpID(mProductPropertiesGrpID);
	}

	// Accessor & Mutator methods
	public String getTitle() {
		return mTitle;
	}

	public void setTitle(String mTitle) {
		this.mTitle = mTitle;
	}

	public int getProductGrpID() {
		return mProductPropertiesGrpID;
	}

	public void setProductPropertiesGrpID(int mProductPropertiesGrpID) {
		this.mProductPropertiesGrpID = mProductPropertiesGrpID;
	}

	public ArrayList<ProductPropertiesItem> getItems() {
		return mItems;
	}

	public void setItems(ArrayList<ProductPropertiesItem> mItems) {
		this.mItems = mItems;
	}
	@Override
	public boolean equals(Object o) {
		if(o instanceof ProductPropertiesHeader){
			ProductPropertiesHeader ppHeader = (ProductPropertiesHeader)o;
			if(this.getProductGrpID() == ppHeader.getProductGrpID()){
				return true;
			}
		}else{
			return false;
		}
		return false;
	}	
}
