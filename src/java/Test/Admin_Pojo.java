/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;


public class Admin_Pojo {
    private int A_ID,BRANCH_ID;

    public int getA_ID() {
        return A_ID;
    }

    public void setA_ID(int A_ID) {
        this.A_ID = A_ID;
    }

    public int getBRANCH_ID() {
        return BRANCH_ID;
    }

    public void setBRANCH_ID(int BRANCH_ID) {
        this.BRANCH_ID = BRANCH_ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    private String name,email,password,mob_no,address;

    public String getMob_no() {
        return mob_no;
    }

    public void setMob_no(String mob_no) {
        this.mob_no = mob_no;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
