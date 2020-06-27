package com.zy.Entry;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product {

    @Id
    private String proId;
    private String proLid;
    private String proName;
    private String proNum;
    private String proChange;
    private String proBili;
    private String proMoney;
    private String proTime;


    public String getProId() {
        return proId;
    }

    public void setProId(String proId) {
        this.proId = proId;
    }

    public String getProLid() {
        return proLid;
    }

    public void setProLid(String proLid) {
        this.proLid = proLid;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getProNum() {
        return proNum;
    }

    public void setProNum(String proNum) {
        this.proNum = proNum;
    }

    public String getProChange() {
        return proChange;
    }

    public void setProChange(String proChange) {
        this.proChange = proChange;
    }

    public String getProBili() {
        return proBili;
    }

    public void setProBili(String proBili) {
        this.proBili = proBili;
    }

    public String getProMoney() {
        return proMoney;
    }

    public void setProMoney(String proMoney) {
        this.proMoney = proMoney;
    }

    public String getProTime() {
        return proTime;
    }

    public void setProTime(String proTime) {
        this.proTime = proTime;
    }

    @Override
    public String toString() {
        return "Product{" +
                "proId='" + proId + '\'' +
                ", proLid='" + proLid + '\'' +
                ", proName='" + proName + '\'' +
                ", proNum='" + proNum + '\'' +
                ", proChange='" + proChange + '\'' +
                ", proBili='" + proBili + '\'' +
                ", proMoney='" + proMoney + '\'' +
                ", proTime='" + proTime + '\'' +
                '}';
    }
}
