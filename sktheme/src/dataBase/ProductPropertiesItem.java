package dataBase;

public class ProductPropertiesItem {
	// private variables
	private String mPropertiesTitle;
	private String mPropertiesValue;
	
	// Constructors
	public ProductPropertiesItem(){}
	
	public ProductPropertiesItem(String properitesTitle, String propertiesValue){
		this.mPropertiesTitle = properitesTitle;
		this.mPropertiesValue = propertiesValue;
	}
	
	// accessor & mutator methods
	public String getPropertiesTitle() {
		return mPropertiesTitle;
	}
	public void setPropertiesTitle(String mPropertiesTitle) {
		this.mPropertiesTitle = mPropertiesTitle;
	}
	public String getPropertiesValue() {
		return mPropertiesValue;
	}
	public void setPropertiesValue(String mPropertiesValue) {
		this.mPropertiesValue = mPropertiesValue;
	}
}
