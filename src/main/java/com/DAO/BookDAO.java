package com.DAO;

import com.entity.BookDtls;

import java.util.List;

public interface BookDAO {
    public boolean addBooks(BookDtls bookDtls);

    public List<BookDtls> getAllBooks();

    public BookDtls getBookById(int id);

    public boolean updateBook(BookDtls bookDtls);

    public boolean deleteBook(int id);

    public List<BookDtls> getNewBooḳ();

    public List<BookDtls> getRecentBooḳ();

    public List<BookDtls> getOldBook();

    public List<BookDtls> getAllRecentBook();

    public List<BookDtls> getAllOldBook();

    public List<BookDtls> getAllNewBook();

    public List<BookDtls> getBookByOld(String email, String cate);

    public boolean oldBookDelete(String email, String cate, int id);
}
