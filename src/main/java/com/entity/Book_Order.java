package com.entity;

public class Book_Order {
    private int Id;
    private String orderId;
    private String userName;
    private String email;
    private String phno;
    private String fullAdd;

    private String bookName;
    private String author;
    private String price;
    private String paymentType;

    public Book_Order() {}

    public Book_Order(String orderId, String userName, String email, String phno, String fullAdd, String bookName, String author, String price, String paymentType) {
        this.orderId = orderId;
        this.userName = userName;
        this.email = email;
        this.phno = phno;
        this.fullAdd = fullAdd;
        this.bookName = bookName;
        this.author = author;
        this.price = price;
        this.paymentType = paymentType;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhno() {
        return phno;
    }

    public void setPhno(String phno) {
        this.phno = phno;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullAdd() {
        return fullAdd;
    }

    public void setFullAdd(String fullAdd) {
        this.fullAdd = fullAdd;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
