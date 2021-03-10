package org.sayesaman.database.dao;

import android.content.res.AssetManager;
import android.os.Environment;
import android.util.Log;

import com.googlecode.androidannotations.annotations.App;
import com.googlecode.androidannotations.annotations.EBean;

import org.sayesaman.database.DatabaseHandler;
import org.sayesaman.database.model.Config;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

/**
 * Created by meysami on 9/8/13.
 */
@EBean
public class ConfigDao {
    @App
    DatabaseHandler handler;

    public String getServerUrl(){
        String url;

        Config conf = readDataFromSd();
        if (conf.getAmIInLocal()) {
            url = "http://" +
                    conf.getLocalPart1() + "." +
                    conf.getLocalPart2() + "." +
                    conf.getLocalPart3() + "." +
                    conf.getLocalPart4() + ":" +
                    conf.getLocalPort()  +
                    "/oe";
        } else {
            url = "http://" +
                    conf.getWebPart1() + "." +
                    conf.getWebPart2() + "." +
                    conf.getWebPart3() + "." +
                    conf.getWebPart4() + ":" +
                    conf.getWebPort();
        }
        return (url);
    }

    public Config readDataFromSd() {
        File file = new File(Environment.getExternalStorageDirectory() + "/App/ipconfig/addresses.xml");
        if (!file.exists())
            readFromAssetsWriteToSd();

        String xml = this.getXmlFromSd(Environment.getExternalStorageDirectory() + "/App/ipconfig/addresses.xml"); // getting XML
        Document doc = this.getDomElement(xml);// getting DOM element
        Config address = this.parseXmlDocument(doc);

        return address;
    }

    private void readFromAssetsWriteToSd() {
        File folder = new File(Environment.getExternalStorageDirectory() + "/App/ipconfig/");
        folder.mkdirs();

        String xml = this.getXmlFromAssets("ipconfig/addresses.xml"); // getting XML
        File file2 = new File(folder.toString(), "addresses.xml");

        try {
            FileWriter out = new FileWriter(file2);
            out.write(xml);
            out.close();
        } catch (IOException e) {
            Log.d("Error:", e.toString());
        }
    }

    private Config readDataFromAssets() {
        String xml = this.getXmlFromAssets("ipconfig/addresses.xml"); // getting XML
        Document doc = this.getDomElement(xml);// getting DOM element
        Config address = this.parseXmlDocument(doc);

        return address;
    }

    private Config parseXmlDocument(Document doc) {
        Config addres = new Config();

        NodeList nl;

        nl = doc.getElementsByTagName("myplace");
        for (int i = 0; i < nl.getLength(); i++) {
            Element e = (Element) nl.item(i);
            addres.setAmIInLocal(Boolean.parseBoolean(getValue(e, "local")));
        }

        nl = doc.getElementsByTagName("local");
        for (int i = 0; i < nl.getLength(); i++) {
            Element e = (Element) nl.item(i);
            addres.setLocalPart1(getValue(e, "part1"));
            addres.setLocalPart2(getValue(e, "part2"));
            addres.setLocalPart3(getValue(e, "part3"));
            addres.setLocalPart4(getValue(e, "part4"));
            addres.setLocalPort(getValue(e, "port"));
        }

        nl = doc.getElementsByTagName("web");
        for (int i = 0; i < nl.getLength(); i++) {
            Element e = (Element) nl.item(i);
            addres.setWebPart1(getValue(e, "part1"));
            addres.setWebPart2(getValue(e, "part2"));
            addres.setWebPart3(getValue(e, "part3"));
            addres.setWebPart4(getValue(e, "part4"));
            addres.setWebPort(getValue(e, "port"));
        }

        return addres;
    }

    private String getXmlFromAssets(String path) {
        String xmlString = null;
        AssetManager am = handler.context.getAssets();
        try {
            InputStream is = am.open(path);
            int length = is.available();
            byte[] data = new byte[length];
            is.read(data);
            xmlString = new String(data);
        } catch (IOException e1) {
            e1.printStackTrace();
        }

        return xmlString;
    }

    private String getXmlFromSd(String path) {
        String xmlString = null;
        try {
            InputStream is = new FileInputStream(path);
            int length = is.available();
            byte[] data = new byte[length];
            is.read(data);
            xmlString = new String(data);
        } catch (IOException e1) {
            e1.printStackTrace();
        }

        return xmlString;
    }

    public Document getDomElement(String xml) {
        Document doc = null;
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        try {

            DocumentBuilder db = dbf.newDocumentBuilder();

            InputSource is = new InputSource();
            is.setCharacterStream(new StringReader(xml));
            doc = db.parse(is);

        } catch (ParserConfigurationException e) {
            Log.e("Error: ", e.getMessage());
            return null;
        } catch (SAXException e) {
            Log.e("Error: ", e.getMessage());
            return null;
        } catch (IOException e) {
            Log.e("Error: ", e.getMessage());
            return null;
        }
        // return DOM
        return doc;
    }

    public String getValue(Element item, String str) {
        NodeList n = item.getElementsByTagName(str);
        return this.getElementValue(n.item(0));
    }

    public final String getElementValue(Node elem) {
        Node child;
        if (elem != null) {
            if (elem.hasChildNodes()) {
                for (child = elem.getFirstChild(); child != null; child = child.getNextSibling()) {
                    if (child.getNodeType() == Node.TEXT_NODE) {
                        return child.getNodeValue();
                    }
                }
            }
        }
        return "";
    }

    public void setValue(Element item, String str, String newValue) {
        NodeList n = item.getElementsByTagName(str);
        this.setElementValue(n.item(0), newValue);
    }

    public void setElementValue(Node elem, String newValue) {
        Node child;
        if (elem != null) {
            if (elem.hasChildNodes()) {
                for (child = elem.getFirstChild(); child != null; child = child.getNextSibling()) {
                    if (child.getNodeType() == Node.TEXT_NODE) {
                        child.setTextContent(newValue);
                    }
                }
            }
        }
    }

    public void modifyXmlNode(Config address) {
        File file = new File(Environment.getExternalStorageDirectory() + "/App/ipconfig/addresses.xml");
        if (!file.exists())
            readFromAssetsWriteToSd();

        String xml = this.getXmlFromSd(Environment.getExternalStorageDirectory() + "/App/ipconfig/addresses.xml"); // getting XML
        Document doc = this.getDomElement(xml);// getting DOM element
        NodeList nl;
        //============================================================================================================== 1 : writing 2 memory
        nl = doc.getElementsByTagName("myplace");
        for (int i = 0; i < nl.getLength(); i++) {
            Element e = (Element) nl.item(i);

            if (address.getAmIInLocal())
                setValue(e, "local", "true");
            else
                setValue(e, "local", "false");
        }

        nl = doc.getElementsByTagName("local");
        for (int i = 0; i < nl.getLength(); i++) {
            Element e = (Element) nl.item(i);
            setValue(e, "part1", address.getLocalPart1());
            setValue(e, "part2", address.getLocalPart2());
            setValue(e, "part3", address.getLocalPart3());
            setValue(e, "part4", address.getLocalPart4());
            setValue(e, "port", address.getLocalPort());
        }

        nl = doc.getElementsByTagName("web");
        for (int i = 0; i < nl.getLength(); i++) {
            Element e = (Element) nl.item(i);
            setValue(e, "part1", address.getWebPart1());
            setValue(e, "part2", address.getWebPart2());
            setValue(e, "part3", address.getWebPart3());
            setValue(e, "part4", address.getWebPart4());
            setValue(e, "port", address.getWebPort());
        }
        //============================================================================================================== 2 : writing 2 sd
        try {
            Transformer transformer = TransformerFactory.newInstance().newTransformer();
            transformer.setOutputProperty(OutputKeys.INDENT, "yes");

            // initialize StreamResult with File object to save to file
            StreamResult result = new StreamResult(file);
            DOMSource source = new DOMSource(doc);
            transformer.transform(source, result);
        } catch (TransformerException e) {
            e.printStackTrace();
        }
        //http://stackoverflow.com/questions/8981361/how-to-edit-a-nodes-value-of-an-existing-xml-file-from-a-sd-card-and-save-it-ba
        //==============================================================================================================
    }
}
