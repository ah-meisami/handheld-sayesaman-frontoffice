package com.example.sktheme;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import com.ara.linkfy.CustomLinkMovementMethod;
import com.ara.linkfy.CustomLinkMovementMethod.linkmovementListener;

import dataBase.Customer;
import dataBase.CustomerType;
import dataBase.ProductGroup;
import dataBase.SupplierProduct;
import android.content.Context;
import android.text.Html;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

public class SupplierItem extends RelativeLayout{
Customer myself;
private TextView txtSupplierGroups;
private TextView txtSuppliyerNeme;
private TextView txtSuppliyerIsSuppliyer;
private ImageView logo;
public static final String LINKE_SUPPLIER="supplier-lnk";
	public SupplierItem(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		// TODO Auto-generated constructor stub
	}
	public SupplierItem(Context context, AttributeSet attrs) {
		super(context, attrs);
		dojobs();
	}
	public SupplierItem(Context context,Customer myself) {
		super(context);
		this.myself=myself;
		dojobs();
	}
	public SupplierItem(Context context) {
		super(context);
		dojobs();
	}
	private void dojobs() {
		LayoutInflater inflater=(LayoutInflater) getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		inflater.inflate(R.layout.supplier, this);
		getTxtSupplierGroups();
		if(myself!=null){
			myself.load();
			if(myself.getCompanyName().trim().compareTo("")==0){
				getTxtSuppliyerNeme().setText(myself.getFirstName()+" "+myself.getLastName());
			}
			else
			getTxtSuppliyerNeme().setText(myself.getCompanyName());
//			String custtype=myself.getCustTypeID();
//			String custtypes[]=custtype.split(",");
//			String supptype="";
//			String seprator="";
//			for (int i = 0; i < custtypes.length; i++) {
//				if(i>0)
//					seprator=" - ";
//				CustomerType c=new CustomerType();
//				c.setAID(Integer.parseInt(custtypes[i]));
//				c.load();
//				if(c.getCustTypeDesc()!=null)
//					supptype+=seprator+c.getCustTypeDesc();
//			}
//			getTxtSuppliyerIsSuppliyer().setText(supptype);
			ArrayList<ProductGroup> pglist=new SupplierProduct().getProductGroup(myself.getCustID());
			String groups="تامین کننده : </br>";
			for (ProductGroup productGroup : pglist) {
				productGroup.load();
				groups+=" <a href=\""+LINKE_SUPPLIER+":"+myself.getCustID()+":"+productGroup.getGrpID()+":"+productGroup.getGrpName()+":"+myself.getCompanyName()+"\">"+productGroup.getGrpName()+"</a>،";
			}
			groups+=" <a href=\""+LINKE_SUPPLIER+":"+myself.getCustID()+":-1"+":"+"همه کالا ها"+":"+myself.getCompanyName()+"\">همه کالا ها</a>";
			getTxtSupplierGroups().setText(Html.fromHtml(groups));
			CustomLinkMovementMethod clinkmove=(CustomLinkMovementMethod) CustomLinkMovementMethod.getInstance(getContext());
			getTxtSupplierGroups().setMovementMethod(CustomLinkMovementMethod.getInstance(getContext()));
			try {
				getLogo().setImageBitmap(imagefactory.decodeSampledBitmapFormAssest(getContext(),"customer"+File.separator+myself.getCustID()+".hmd"));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		int i=(int) (statics.getRandom().nextDouble()*10);
		((Button)findViewById(R.id.supplier_badger)).setText(i+"");
	}
	
	public TextView getTxtSupplierGroups() {
		if(txtSupplierGroups==null)
			txtSupplierGroups=(TextView) findViewById(R.id.txt_supplier_item_groups);
		return txtSupplierGroups;
	}
	public void setTxtSupplierGroups(TextView txtSupplierGroups) {
		this.txtSupplierGroups = txtSupplierGroups;
	}



	public TextView getTxtSuppliyerNeme() {
		if(txtSuppliyerNeme==null)
			txtSuppliyerNeme=(TextView) findViewById(R.id.txtview_suppliyer_neme);
		return txtSuppliyerNeme;
	}



	public TextView getTxtSuppliyerIsSuppliyer() {
		if(txtSuppliyerIsSuppliyer==null)
			txtSuppliyerIsSuppliyer=(TextView) findViewById(R.id.txtview_suppliyer_is_suppliyer);
		return txtSuppliyerIsSuppliyer;
	}
	public SupplierItem showCheckBox(){
		findViewById(R.id.supplier_check_box).getLayoutParams().width=android.widget.RelativeLayout.LayoutParams.WRAP_CONTENT;
		requestLayout();
		return this;
	}
	public SupplierItem hideCheckBox(){
		findViewById(R.id.supplier_check_box).getLayoutParams().width=0;
		requestLayout();
		return this;
	}
	public ImageView getLogo() {
		if(logo==null)
			logo=(ImageView) findViewById(R.id.imgview_suppliyer_image);
		return logo;
	}

}
