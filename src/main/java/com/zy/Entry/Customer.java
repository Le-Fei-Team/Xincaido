package com.zy.Entry;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customer {

    @Id
    private String cusId;
    private String cusName;
    private String cusPassWord;
    private String cusHeadImg;
    private String cusPhone;

    public String getCusId() {
        return cusId;
    }

    public void setCusId(String cusId) {
        this.cusId = cusId;
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }

    public String getCusPassWord() {
        return cusPassWord;
    }

    public void setCusPassWord(String cusPassWord) {
        this.cusPassWord = cusPassWord;
    }

    public String getCusHeadImg() {
        return cusHeadImg;
    }

    public void setCusHeadImg(String cusHeadImg) {
        this.cusHeadImg = cusHeadImg;
    }

    public String getCusPhone() {
        return cusPhone;
    }

    public void setCusPhone(String cusPhone) {
        this.cusPhone = cusPhone;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "cusId='" + cusId + '\'' +
                ", cusName='" + cusName + '\'' +
                ", cusPassWord='" + cusPassWord + '\'' +
                ", cusHeadImg='" + cusHeadImg + '\'' +
                ", cusPhone='" + cusPhone + '\'' +
                '}';
    }
}
