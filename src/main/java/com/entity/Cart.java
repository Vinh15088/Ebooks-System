package com.entity;

public class Cart {
    private int cId;
    private int bId;
    private int uId;
    private String bookName;
    private String author;
    private Double price;
    private Double totalPrice;

    public Cart() {};

    public Cart(int bId, int uId, String bookName, Double price, String author, Double totalPrice) {
        this.bId = bId;
        this.uId = uId;
        this.bookName = bookName;
        this.price = price;
        this.author = author;
        this.totalPrice = totalPrice;
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public int getbId() {
        return bId;
    }

    public void setbId(int bId) {
        this.bId = bId;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
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

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cId=" + cId +
                ", bId=" + bId +
                ", uId=" + uId +
                ", bookName='" + bookName + '\'' +
                ", author='" + author + '\'' +
                ", price=" + price +
                ", totalPrice=" + totalPrice +
                '}';
    }
}
