package com.DAO;

import com.entity.Book_Order;

import java.util.List;

public interface BookOrderDAO {
    public int getOrderNo();

    public boolean saveOrder(List<Book_Order> book_order);

    public List<Book_Order> getBookOrder(String email);

    public List<Book_Order> getBookOrder();



}
