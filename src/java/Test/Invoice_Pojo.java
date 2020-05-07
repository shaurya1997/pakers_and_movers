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
public class Invoice_Pojo {
    private int INV_ID,ENQ_ID,Branch_ID;
    private String INV_DATE,HAPPY_CODE;

    public String getHAPPY_CODE() {
        return HAPPY_CODE;
    }

    public void setHAPPY_CODE(String HAPPY_CODE) {
        this.HAPPY_CODE = HAPPY_CODE;
    }
    private String PRICE;

    public int getINV_ID() {
        return INV_ID;
    }

    public void setINV_ID(int INV_ID) {
        this.INV_ID = INV_ID;
    }

    public int getENQ_ID() {
        return ENQ_ID;
    }

    public void setENQ_ID(int ENQ_ID) {
        this.ENQ_ID = ENQ_ID;
    }

    public int getBranch_ID() {
        return Branch_ID;
    }

    public void setBranch_ID(int Branch_ID) {
        this.Branch_ID = Branch_ID;
    }

   

    public String getINV_DATE() {
        return INV_DATE;
    }

    public void setINV_DATE(String INV_DATE) {
        this.INV_DATE = INV_DATE;
    }

    public String getPRICE() {
        return PRICE;
    }

    public void setPRICE(String PRICE) {
        this.PRICE = PRICE;
    }

  
}
