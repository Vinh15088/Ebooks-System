package com.DAO;

import com.entity.Book_Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookOrderDDAOImpl implements BookOrderDAO {
    private Connection conn;

    public BookOrderDDAOImpl(Connection conn) {
        this.conn = conn;
    }


    @Override
    public int getOrderNo() {
        int orderNo = 1;
        try {
            String sql = "select * from book_order";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                orderNo++;
            }
        } catch (Exception e) {
            e.printStackTrace();

        }


        return orderNo;
    }

    @Override
    public boolean saveOrder(List<Book_Order> list) {
        boolean f = false;

        try {
            String sql = "insert into book_order(order_id, user_name, email, address, phno, bookname, author, price, payment) values(?,?,?,?,?,?,?,?,?)";
            conn.setAutoCommit(false);

            PreparedStatement ps = conn.prepareStatement(sql);

            for(Book_Order book_order : list) {
                ps.setString(1, book_order.getOrderId());
                ps.setString(2, book_order.getUserName());
                ps.setString(3, book_order.getEmail());
                ps.setString(4, book_order.getFullAdd());
                ps.setString(5, book_order.getPhno());
                ps.setString(6, book_order.getBookName());
                ps.setString(7, book_order.getAuthor());
                ps.setString(8, book_order.getPrice());
                ps.setString(9, book_order.getPaymentType());

                ps.addBatch();
            }

            int [] count = ps.executeBatch();
            conn.commit();
            f = true;
            conn.setAutoCommit(true);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    @Override
    public List<Book_Order> getBookOrder(String email) {
        List<Book_Order> list = new ArrayList<Book_Order>();
        Book_Order book_order = null;

        try {
            String sql = "select * from book_order where email = ?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                book_order = new Book_Order();
                book_order.setId(rs.getInt(1));
                book_order.setOrderId(rs.getString(2));
                book_order.setUserName(rs.getString(3));
                book_order.setEmail(rs.getString(4));
                book_order.setFullAdd(rs.getString(5));
                book_order.setPhno(rs.getString(6));
                book_order.setBookName(rs.getString(7));
                book_order.setAuthor(rs.getString(8));
                book_order.setPrice(rs.getString(9));
                book_order.setPaymentType(rs.getString(10));

                list.add(book_order);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<Book_Order> getBookOrder() {
        List<Book_Order> list = new ArrayList<Book_Order>();
        Book_Order book_order = null;

        try {
            String sql = "select * from book_order";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                book_order = new Book_Order();
                book_order.setId(rs.getInt(1));
                book_order.setOrderId(rs.getString(2));
                book_order.setUserName(rs.getString(3));
                book_order.setEmail(rs.getString(4));
                book_order.setFullAdd(rs.getString(5));
                book_order.setPhno(rs.getString(6));
                book_order.setBookName(rs.getString(7));
                book_order.setAuthor(rs.getString(8));
                book_order.setPrice(rs.getString(9));
                book_order.setPaymentType(rs.getString(10));

                list.add(book_order);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
