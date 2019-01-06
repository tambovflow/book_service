package am.dreamteam.bookservice.dao;

import am.dreamteam.bookservice.entities.books.Author;
import am.dreamteam.bookservice.entities.books.Book;
import am.dreamteam.bookservice.entities.books.Category;

import java.io.Serializable;
import java.util.Set;

public interface BookDAO extends Serializable {
    Book getBookById(int id);
    Book checkBookUnique(String title, String language, Set<Author> authors);
    boolean addBook(Book book, Set<Author> authors, Set<Category> categories);


}