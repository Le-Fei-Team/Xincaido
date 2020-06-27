package com.zy.Entry;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ProduceList {

    @Id
    private String listId;
    private String listName;
    private String listTime;

    public String getListId() {
        return listId;
    }

    public void setListId(String listId) {
        this.listId = listId;
    }

    public String getListName() {
        return listName;
    }

    public void setListName(String listName) {
        this.listName = listName;
    }

    public String getListTime() {
        return listTime;
    }

    public void setListTime(String listTime) {
        this.listTime = listTime;
    }

    @Override
    public String toString() {
        return "ProduceList{" +
                "listId='" + listId + '\'' +
                ", listName='" + listName + '\'' +
                ", listTime='" + listTime + '\'' +
                '}';
    }
}
