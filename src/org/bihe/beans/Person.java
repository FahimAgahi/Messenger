package org.bihe.beans;

import javax.print.attribute.standard.Destination;
import java.util.Date;

public class Person {
    private int id;
    private String flName;
    private String lsName;
    private String uName;
    private String password;
    private java.sql.Date birthDate;
    private String phoneNum;
    private String Gender;

    public Person(int id, String flName, String lsName, String uName, String password, java.sql.Date birthDate, String phoneNum, String Gender) {
        this.id = id;
        this.flName = flName;
        this.lsName = lsName;
        this.uName = uName;
        this.password = password;
        this.Gender = Gender;
        this.phoneNum = phoneNum;
        this.birthDate = birthDate;


    }

    public Person() {

    }

    public int getId() {
        return id;
    }

    public String getPassword() {
        return password;
    }

    public String getFlName() {
        return flName;
    }

    public String getLsName() {
        return lsName;
    }

    public String getGender() {
        return Gender;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public String getuName() {
        return uName;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setBirthDate(java.sql.Date birthDate) {
        this.birthDate = birthDate;
    }

    public void setFlName(String flName) {
        this.flName = flName;
    }

    public void setGender(String gender) {
        Gender = gender;
    }

    public void setLsName(String lsName) {
        this.lsName = lsName;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public void setId(int id) {
        this.id = id;
    }
}

