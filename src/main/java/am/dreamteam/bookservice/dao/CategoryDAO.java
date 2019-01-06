package am.dreamteam.bookservice.dao;

import am.dreamteam.bookservice.entities.books.Category;

import java.io.Serializable;
import java.util.Set;

public interface CategoryDAO extends Serializable {
    Category getCategoryById(int id);
    Category getCategoryByName(String name);
    boolean addCategory(Category category);
    Set<Category> getCategoriesSet(String...categories);
}