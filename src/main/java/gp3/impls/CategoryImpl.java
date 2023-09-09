package gp3.impls;

import gp3.daos.CategoryDao;
import gp3.helpers.DBHelpers;
import gp3.models.Category;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Component
public class CategoryImpl implements CategoryDao {

    @Override
    public int createCategory(Category category) {
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "INSERT INTO category (name) VALUES (?) ";
        int result = 0 ;
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,category.getName());
            result = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Category> getAllCategories() {
        ResultSet rs ;
        List<Category> categoryList = new ArrayList<>();
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM category";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                categoryList.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categoryList;
    }

    @Override
    public Category getCategoryById(int id) {
        Category category = new Category();
        ResultSet rs ;
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM category WHERE id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,id);
            rs = ps.executeQuery();
            while (rs.next()){
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return category;
    }

    @Override
    public int deleteCategory(int id) {
        int result = 0 ;
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "DELETE FROM category WHERE id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,id);
            result=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int editCategory(int id) {
        int result = 0 ;
        Category category = new Category();
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "UPDATE category SET name=? WHERE id=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1,category.getName());
            ps.setInt(2,category.getId());
            result = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }


}
