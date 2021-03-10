package webservice;
import org.ksoap2.SoapEnvelope;
import org.ksoap2.serialization.PropertyInfo;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapSerializationEnvelope;
import org.ksoap2.transport.HttpTransportSE;
import dataBase.Product;

public class CallSoap {
	public final String SOAP_ACTION = "http://tempuri.org/getProduct";

	public final String OPERATION_NAME = "getProduct";

	public final String WSDL_TARGET_NAMESPACE = "http://tempuri.org/";

	public final String SOAP_ADDRESS = "http://178.131.61.61:80/Services/SiteWS.asmx";

	public CallSoap() {		
	}

	public void Call(int a) {
		SoapObject request = new SoapObject(WSDL_TARGET_NAMESPACE, OPERATION_NAME);
		PropertyInfo pi = new PropertyInfo();
		pi.setName("prodId");
		pi.setValue(a);
		pi.setType(Integer.class);
		request.addProperty(pi);

		SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(SoapEnvelope.VER11);
		envelope.dotNet = true;
		envelope.setOutputSoapObject(request);		

		HttpTransportSE httpTransport = new HttpTransportSE(SOAP_ADDRESS);
		
		try {
			httpTransport.call(SOAP_ACTION, envelope);
			SoapObject response =(SoapObject) envelope.getResponse();			
			Product p = new Product();
			p.setProdID(Integer.parseInt(response.getProperty(0).toString()));
			p.setProdName(response.getProperty(1).toString());
			p.setProdGrpID(Integer.parseInt(response.getProperty(2).toString()));
			p.setIranCode(response.getProperty(3).toString());
			p.setProdState(Integer.parseInt(response.getProperty(4).toString()));
			p.setProdBarcode(response.getProperty(5).toString());
			p.setCreateDate(response.getProperty(6).toString());
			p.setProdShortName(response.getProperty(7).toString());
			p.setProdComment(response.getProperty(8).toString());
			p.setUserID(Integer.parseInt(response.getProperty(9).toString()));
			p.setBrandID(Integer.parseInt(response.getProperty(10).toString()));
			p.setTolidiID(Integer.parseInt(response.getProperty(11).toString()));
			p.setCountryID(Integer.parseInt(response.getProperty(12).toString()));
			p.setProdInfoComment(response.getProperty(13).toString());
			p.setSupplierID(Integer.parseInt(response.getProperty(14).toString()));
//			p.setThumbImage(response.getProperty(15).toString());
//			p.setMediumImage(response.getProperty(16).toString());
//			p.setActualImage(response.getProperty(17).toString());
			StaticWebService.product = p;
			StaticWebService.state = "success";
		} catch (Exception ex) {
			StaticWebService.state = ex.toString();
			ex.printStackTrace();
		}
	}
}
