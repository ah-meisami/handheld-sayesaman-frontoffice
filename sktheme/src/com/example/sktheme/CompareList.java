package com.example.sktheme;

import java.util.ArrayList;
import dataBase.Product;

public class CompareList {
	private ArrayList<Product> productlist = new ArrayList<Product>();
	private ArrayList<compListener> listeners = new ArrayList<CompareList.compListener>();
	public CompareList() {
	}
	public void addListeners(compListener clistener) {
		listeners.add(clistener);
	}

	public void removeListeners(compListener clistener) {
		listeners.remove(clistener);
	}

	public boolean addProductlist(Product p) {
		for (int i = 0; i < getProductlist().size(); i++) {
			if (getProductlist().get(i).getProdID() == p.getProdID()) {
				return false;
			}
		}
		getProductlist().add(p);
		changed();
		return true;
	}
	public boolean hasProductInlist(Product p) {
		for (int i = 0; i < getProductlist().size(); i++) {
			if (getProductlist().get(i).getProdID() == p.getProdID()) {
				return true;
			}
		}
		return false;
	}
	public boolean removeProductlist(Product p) {
		for (int i = 0; i < getProductlist().size(); i++) {
			if (getProductlist().get(i).getProdID() == p.getProdID()) {
				getProductlist().remove(i);
				changed();
				return true;
			}
		}
		return false;
	}

	private void changed() {
		for (int i = 0; i < listeners.size(); i++) {
			listeners.get(i).compareChanged(this);
		}
	}

	public interface compListener {
		public void compareChanged(CompareList c);
	}

	public int getcount() {
		return getProductlist().size();
	}

	public Product getproduct(int i) {
		// TODO Auto-generated method stub
		return getProductlist().get(i);
	}
	public ArrayList<Product> getProductlist() {
		return productlist;
	}
	public void setProductlist(ArrayList<Product> productlist) {
		this.productlist = productlist;
	}
}
