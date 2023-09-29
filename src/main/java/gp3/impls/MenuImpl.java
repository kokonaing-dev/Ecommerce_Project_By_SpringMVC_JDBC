package gp3.impls;

import gp3.daos.MenuDao;
import gp3.helpers.DBHelpers;
import gp3.models.Menu;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Component
public class MenuImpl implements MenuDao {


    @Override
    public int createMenu(Menu menu) {
        int status = 0;
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "INSERT INTO menu_item (item,price,content,image,category_id) VALUES (?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            setMenu(menu, ps);
            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    @Override
    public List<Menu> getAllMenu() {
        ResultSet rs ;
        List<Menu> menus = new ArrayList<>();
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM menu_item";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            rs =  ps.executeQuery();
            while (rs.next()){
                Menu menu = new Menu();
                menuAdd(rs, menu);
                menu.setImage(rs.getString("image"));
                menus.add(menu);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return menus ;
    }

    @Override
    public int deleteMenu(int id) {
        int status=0;
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "DELETE FROM menu_item WHERE id=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1,id);
            status=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    @Override
    public int editMenu(Menu menu) {
        int status = 0 ;
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "UPDATE menu_item SET  item=? ,price=? , content=? , image=? ,category_id=?  WHERE id=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            setMenu(menu, ps);
            ps.setInt(6,menu.getId());
            status=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    @Override
    public Menu getMenuById(int id) {
        ResultSet rs ;
        Menu menu = new Menu();
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM menu_item WHERE id=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            while (rs.next()){
                menuAdd(rs, menu);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return menu;
    }

    @Override
    public List<Menu> getCatMenu(int category) {
        ResultSet rs ;
        List<Menu> menus = new ArrayList<>();
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM menu_item where category_id=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1,category);
            rs =  ps.executeQuery();
            while (rs.next()){
                Menu menu = new Menu();
                menuAdd(rs, menu);
                menu.setImage(rs.getString("image"));
                menus.add(menu);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return menus ;
    }

    @Override
    public List<Menu> searchMenu(String search) {
        ResultSet rs ;
        List<Menu> menus = new ArrayList<>();
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM menu_item where item LIKE ?";

        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1,"%"+search+"%");
            rs = ps.executeQuery();
            while (rs.next()){
                Menu menu = new Menu();
                menuAdd(rs ,menu);
                menu.setImage(rs.getString("image"));
                menus.add(menu);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return menus;
    }

    public List<Menu> getAllMenuForDisplay() {
        ResultSet rs ;
        List<Menu> menus = new ArrayList<>();
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM menu_item INNER JOIN category ON menu_item.category_id = category.id";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            rs =  ps.executeQuery();
            while (rs.next()){
                Menu menu = new Menu();
                menu.setId(rs.getInt("id"));
                menu.setItem(rs.getString("item"));
                menu.setPrice(rs.getInt("price"));
                menu.setContent(rs.getString("content"));
                menu.setImage(rs.getString("image"));
                menu.setCategory_id(rs.getInt("category_id"));
                menu.setCategory_name(rs.getString("name"));
                menus.add(menu);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return menus ;
    }



    //extract method for setting database value to less code complexion
    private void setMenu(Menu menu, PreparedStatement ps) throws SQLException {
        ps.setString(1, menu.getItem());
        ps.setInt(2, menu.getPrice());
        ps.setString(3, menu.getContent());
        ps.setString(4, menu.getImage());
        ps.setInt(5, menu.getCategory_id());
    }

    private void menuAdd(ResultSet rs, Menu menu) throws SQLException {
        menu.setId(rs.getInt("id"));
        menu.setItem(rs.getString("item"));
        menu.setPrice(rs.getInt("price"));
        menu.setContent(rs.getString("content"));
        menu.setImage(rs.getString("image"));
        menu.setCategory_id(rs.getInt("category_id"));
    }
}
