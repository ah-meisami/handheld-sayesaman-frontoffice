package com.example.sktheme;

import java.util.ArrayList;
import dataBase.Product;

public class cart {
	private ArrayList<Product> productlist = new ArrayList<Product>();
	private ArrayList<cartlistener> listeners = new ArrayList<cart.cartlistener>();
	public cart() {
	}
	public void addListeners(cartlistener clistener) {
		listeners.add(clistener);
	}

	public void removeListeners(cartlistener clistener) {
		listeners.remove(clistener);
	}

	public boolean addProductlist(Product p) {

		for (int i = 0; i < productlist.size(); i++) {
			if (productlist.get(i).getProdID() == p.getProdID()) {
				return false;
			}
		}
		productlist.add(p);
		changed();
		return true;
	}
	public boolean hasProductInlist(Product p) {

		for (int i = 0; i < productlist.size(); i++) {
			if (productlist.get(i).getProdID() == p.getProdID()) {
				return true;
			}
		}
		return false;
	}
	public boolean removeProductlist(Product p) {
		for (int i = 0; i < productlist.size(); i++) {
			if (productlist.get(i).getProdID() == p.getProdID()) {
				productlist.remove(i);
				changed();
				return true;
			}
		}
		return false;
	}

	private void changed() {
		for (int i = 0; i < listeners.size(); i++) {
			listeners.get(i).cartchanged(this);
		}
	}

	public interface cartlistener {
		public void cartchanged(cart c);
	}

	public int getcount() {
		return productlist.size();
	}

	public Product getproduct(int i) {
		// TODO Auto-generated method stub
		return productlist.get(i);
	}
}
