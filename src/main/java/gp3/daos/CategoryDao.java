package gp3.daos;

import gp3.models.Category;

import java.util.List;

public interface CategoryDao {

    int createCategory(Category category);

    List<Category> getAllCategories();

    Category getCategoryById(int id);

    int deleteCategory(int id);

    int editCategory(int id);

}
