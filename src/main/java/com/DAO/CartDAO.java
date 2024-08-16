package com.DAO;

import com.entity.BookDtls;
import com.entity.Cart;

import java.util.List;

public interface CartDAO {
    public boolean addCart(Cart cart);

    public List<Cart> getBookByUser(int userId);

    public boolean deleteBook(int bid, int uid);
}
