/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

/**
 *
 * @author Shashwat Vashimkar
 */
public class Enquiry_Pojo {
    private int ENQ_ID,CUST_ID;
    private String SOURCE,DESTINATION,DOD,MSG;

    public int getENQ_ID() {
        return ENQ_ID;
    }

    public void setENQ_ID(int ENQ_ID) {
        this.ENQ_ID = ENQ_ID;
    }

    public int getCUST_ID() {
        return CUST_ID;
    }

    public void setCUST_ID(int CUST_ID) {
        this.CUST_ID = CUST_ID;
    }

    public String getSOURCE() {
        return SOURCE;
    }

    public void setSOURCE(String SOURCE) {
        this.SOURCE = SOURCE;
    }

    public String getDESTINATION() {
        return DESTINATION;
    }

    public void setDESTINATION(String DESTINATION) {
        this.DESTINATION = DESTINATION;
    }

    public String getDOD() {
        return DOD;
    }

    public void setDOD(String DOD) {
        this.DOD = DOD;
    }

    public String getMSG() {
        return MSG;
    }

    public void setMSG(String MSG) {
        this.MSG = MSG;
    }
}
