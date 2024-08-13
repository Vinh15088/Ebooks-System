package com.DAO;

import com.entity.BookDtls;

import java.util.List;

public interface BookDAO {
    public boolean addBooks(BookDtls bookDtls);

    public List<BookDtls> getAllBooks();

    public BookDtls getBookById(int id);

    public boolean updateBook(BookDtls bookDtls);

    public boolean deleteBook(int id);
}
