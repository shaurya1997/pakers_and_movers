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
public class Delivery_Pojo {
    private int DEL_ID,INV_ID;
    private String VEH_NO,STATUS,DOD;

    public String getDOD() {
        return DOD;
    }

    public void setDOD(String DOD) {
        this.DOD = DOD;
    }

    public int getDEL_ID() {
        return DEL_ID;
    }

    public void setDEL_ID(int DEL_ID) {
        this.DEL_ID = DEL_ID;
    }

    public int getINV_ID() {
        return INV_ID;
    }

    public void setINV_ID(int INV_ID) {
        this.INV_ID = INV_ID;
    }

    public String getVEH_NO() {
        return VEH_NO;
    }

    public void setVEH_NO(String VEH_NO) {
        this.VEH_NO = VEH_NO;
    }

    public String getSTATUS() {
        return STATUS;
    }

    public void setSTATUS(String STATUS) {
        this.STATUS = STATUS;
    }
}
