package com.DAO;

import com.entity.BookDtls;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookDAOImpl implements BookDAO {
    private Connection conn;

    public BookDAOImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean addBooks(BookDtls bookDtls) {
        boolean f = false;

        try {
            String sql = "insert into book_dtls(bookname, author, price, bookcategory, status, photo, email) values(?,?,?,?,?,?,?) ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, bookDtls.getBookName());
            ps.setString(2, bookDtls.getAuthor());
            ps.setString(3, bookDtls.getPrice());
            ps.setString(4, bookDtls.getBookCategory());
            ps.setString(5, bookDtls.getStatus());
            ps.setString(6, bookDtls.getPhotoName());
            ps.setString(7, bookDtls.getEmail());

            int check = ps.executeUpdate();
            if(check == 1) f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<BookDtls> getAllBooks() {
        List<BookDtls> list = new ArrayList<BookDtls>();
        BookDtls bookDtls = null;

        try {
            String sql = "select * from book_dtls ";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                bookDtls = new BookDtls();
                bookDtls.setId(rs.getInt(1));
                bookDtls.setBookName(rs.getString(2));
                bookDtls.setAuthor(rs.getString(3));
                bookDtls.setPrice(rs.getString(4));
                bookDtls.setBookCategory(rs.getString(5));
                bookDtls.setStatus(rs.getString(6));
                bookDtls.setPhotoName(rs.getString(7));
                bookDtls.setEmail(rs.getString(8));

                list.add(bookDtls);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public BookDtls getBookById(int id) {
        BookDtls bookDtls = null;
        try {
            String sql = "select * from book_dtls where bookid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                bookDtls = new BookDtls();
                bookDtls.setId(rs.getInt(1));
                bookDtls.setBookName(rs.getString(2));
                bookDtls.setAuthor(rs.getString(3));
                bookDtls.setPrice(rs.getString(4));
                bookDtls.setBookCategory(rs.getString(5));
                bookDtls.setStatus(rs.getString(6));
                bookDtls.setPhotoName(rs.getString(7));
                bookDtls.setEmail(rs.getString(8));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bookDtls;
    }

    @Override
    public boolean updateBook(BookDtls bookDtls) {
        boolean f = false;
        try {
            String sql = "update book_dtls set bookname=?, author=?, price=?, status=? where bookid=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, bookDtls.getBookName());
            ps.setString(2, bookDtls.getAuthor());
            ps.setString(3, bookDtls.getPrice());
            ps.setString(4, bookDtls.getStatus());
            ps.setInt(5, bookDtls.getId());

            int check = ps.executeUpdate();

            if(check == 1) f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    @Override
    public boolean deleteBook(int id) {
        boolean f = false;

        try {
            String sql = "delete from book_dtls where bookid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            int check = ps.executeUpdate();

            if(check == 1) f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<BookDtls> getNewBooḳ() {
        List<BookDtls> list = new ArrayList<BookDtls>();
        BookDtls bookDtls = null;

        try {
            String sql = "select * from book_dtls where bookcategory=? and status=? order by bookid DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "New");
            ps.setString(2, "Active");

            ResultSet rs = ps.executeQuery();

            int i = 1;
            while(rs.next() && i<=4) {
                bookDtls = new BookDtls();
                bookDtls.setId(rs.getInt(1));
                bookDtls.setBookName(rs.getString(2));
                bookDtls.setAuthor(rs.getString(3));
                bookDtls.setPrice(rs.getString(4));
                bookDtls.setBookCategory(rs.getString(5));
                bookDtls.setStatus(rs.getString(6));
                bookDtls.setPhotoName(rs.getString(7));
                bookDtls.setEmail(rs.getString(8));

                list.add(bookDtls);
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<BookDtls> getRecentBooḳ() {
        List<BookDtls> list = new ArrayList<BookDtls>();
        BookDtls bookDtls = null;

        try {
            String sql = "select * from book_dtls where status=? order by bookid DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "Active");

            ResultSet rs = ps.executeQuery();

            int i = 1;
            while(rs.next() && i<=4) {
                bookDtls = new BookDtls();
                bookDtls.setId(rs.getInt(1));
                bookDtls.setBookName(rs.getString(2));
                bookDtls.setAuthor(rs.getString(3));
                bookDtls.setPrice(rs.getString(4));
                bookDtls.setBookCategory(rs.getString(5));
                bookDtls.setStatus(rs.getString(6));
                bookDtls.setPhotoName(rs.getString(7));
                bookDtls.setEmail(rs.getString(8));

                list.add(bookDtls);
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<BookDtls> getOldBook() {
        List<BookDtls> list = new ArrayList<BookDtls>();
        BookDtls bookDtls = null;

        try {
            String sql = "select * from book_dtls where bookcategory=? and status=? order by bookid DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "Old");
            ps.setString(2, "Active");

            ResultSet rs = ps.executeQuery();

            int i = 1;
            while(rs.next() && i<=4) {
                bookDtls = new BookDtls();
                bookDtls.setId(rs.getInt(1));
                bookDtls.setBookName(rs.getString(2));
                bookDtls.setAuthor(rs.getString(3));
                bookDtls.setPrice(rs.getString(4));
                bookDtls.setBookCategory(rs.getString(5));
                bookDtls.setStatus(rs.getString(6));
                bookDtls.setPhotoName(rs.getString(7));
                bookDtls.setEmail(rs.getString(8));

                list.add(bookDtls);
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<BookDtls> getAllRecentBook() {
        List<BookDtls> list = new ArrayList<BookDtls>();
        BookDtls bookDtls = null;

        try {
            String sql = "select * from book_dtls where status=? order by bookid DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "Active");

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                bookDtls = new BookDtls();
                bookDtls.setId(rs.getInt(1));
                bookDtls.setBookName(rs.getString(2));
                bookDtls.setAuthor(rs.getString(3));
                bookDtls.setPrice(rs.getString(4));
                bookDtls.setBookCategory(rs.getString(5));
                bookDtls.setStatus(rs.getString(6));
                bookDtls.setPhotoName(rs.getString(7));
                bookDtls.setEmail(rs.getString(8));

                list.add(bookDtls);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<BookDtls> getAllOldBook() {
        List<BookDtls> list = new ArrayList<BookDtls>();
        BookDtls bookDtls = null;

        try {
            String sql = "select * from book_dtls where bookcategory=? and status=? order by bookid DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "Old");
            ps.setString(2, "Active");

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                bookDtls = new BookDtls();
                bookDtls.setId(rs.getInt(1));
                bookDtls.setBookName(rs.getString(2));
                bookDtls.setAuthor(rs.getString(3));
                bookDtls.setPrice(rs.getString(4));
                bookDtls.setBookCategory(rs.getString(5));
                bookDtls.setStatus(rs.getString(6));
                bookDtls.setPhotoName(rs.getString(7));
                bookDtls.setEmail(rs.getString(8));

                list.add(bookDtls);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<BookDtls> getAllNewBook() {
        List<BookDtls> list = new ArrayList<BookDtls>();
        BookDtls bookDtls = null;

        try {
            String sql = "select * from book_dtls where bookcategory=? and status=? order by bookid DESC";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "New");
            ps.setString(2, "Active");

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                bookDtls = new BookDtls();
                bookDtls.setId(rs.getInt(1));
                bookDtls.setBookName(rs.getString(2));
                bookDtls.setAuthor(rs.getString(3));
                bookDtls.setPrice(rs.getString(4));
                bookDtls.setBookCategory(rs.getString(5));
                bookDtls.setStatus(rs.getString(6));
                bookDtls.setPhotoName(rs.getString(7));
                bookDtls.setEmail(rs.getString(8));

                list.add(bookDtls);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<BookDtls> getBookByOld(String email, String cate) {
        List<BookDtls> list = new ArrayList<BookDtls>();
        BookDtls bookDtls = null;

        try {
            String sql = "select * from book_dtls where bookcategory=? and email=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, cate);
            ps.setString(2, email);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                bookDtls = new BookDtls();
                bookDtls.setId(rs.getInt(1));
                bookDtls.setBookName(rs.getString(2));
                bookDtls.setAuthor(rs.getString(3));
                bookDtls.setPrice(rs.getString(4));
                bookDtls.setBookCategory(rs.getString(5));
                bookDtls.setStatus(rs.getString(6));
                bookDtls.setPhotoName(rs.getString(7));
                bookDtls.setEmail(rs.getString(8));

                list.add(bookDtls);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public boolean oldBookDelete(String email, String cate, int id) {
        boolean f = false;

        try {
            String sql = "delete from book_dtls where bookcategory=? and email=? and bookid=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, cate);
            ps.setString(2, email);
            ps.setInt(3, id);

            int check = ps.executeUpdate();

            if(check == 1) f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }


        return f;
    }


}
