package com.DAO;

import com.entity.BookDtls;
import com.entity.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CartDAOImpl implements CartDAO{
    private Connection conn;

    public CartDAOImpl(Connection conn){
        this.conn = conn;
    }

    @Override
    public boolean addCart(Cart cart) {
        boolean f = false;

        try {
            String sql = "insert into cart(bid, uid, bookname, author, price, totalprice) values(?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, cart.getbId());
            ps.setInt(2, cart.getuId());
            ps.setString(3, cart.getBookName());
            ps.setString(4, cart.getAuthor());
            ps.setDouble(5, cart.getPrice());
            ps.setDouble(6, cart.getTotalPrice());

            int check = ps.executeUpdate();

            if(check == 1) f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<Cart> getBookByUser(int userId) {
        List<Cart> list = new ArrayList<Cart>();
        Cart cart = null;
        double totalPrice = 0;

        try {
            String sql = "select * from cart where uid = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                cart = new Cart();
                cart.setcId(rs.getInt(1));
                cart.setbId(rs.getInt(2));
                cart.setuId(rs.getInt(3));
                cart.setBookName(rs.getString(4));
                cart.setAuthor(rs.getString(5));
                cart.setPrice(rs.getDouble(6));

                totalPrice += rs.getDouble(7);

                cart.setTotalPrice(totalPrice);
                list.add(cart);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public boolean deleteBook(int bid, int uid, int cid) {
        boolean f = false;

        try {
            String sql = "delete from cart where bid=? and uid=? and cid";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, bid);
            ps.setInt(2, uid);
            ps.setInt(3, cid);

            int check = ps.executeUpdate();

            if(check == 1) f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
