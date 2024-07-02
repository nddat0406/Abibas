/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HP
 */
public class Order {
    private int id;
    private float amount;
    private int accountId;
    private String createdAt;
    private List<OrderDetail> listOrderDetail = new ArrayList<>();

    public Order() {
    }

    public Order(int id, float amount, int accountId, String createdAt) {
        this.id = id;
        this.amount = amount;
        this.accountId = accountId;
        this.createdAt = createdAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public List<OrderDetail> getListOrderDetail() {
        return listOrderDetail;
    }

    public void setListOrderDetail(List<OrderDetail> listOrderDetail) {
        this.listOrderDetail = listOrderDetail;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", amount=" + amount + ", accountId=" + accountId + ", createdAt=" + createdAt + ", listOrderDetail=" + listOrderDetail + '}';
    }
    
    
}
