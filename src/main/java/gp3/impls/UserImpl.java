package gp3.impls;

import gp3.daos.UserDao;
import gp3.helpers.DBHelpers;
import gp3.models.User;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Component
public class UserImpl implements UserDao {

    //login - customer
    public User getUserByEmail(User user) {
        User user1 = null;
        ResultSet rs ;
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM user WHERE email=?" ;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1,user.getEmail());
            rs = ps.executeQuery();
            while (rs.next()){
                user1 = new User();
                user1.setId(rs.getInt("id"));
                user1.setName(rs.getString("name"));
                user1.setEmail(rs.getString("email"));
                user1.setPassword(rs.getString("password"));
                user1.setRole(rs.getString("role"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user1;
    }

    //customer register- if he sure to order
    @Override
    public int createUser(User user) {
        int status = 0 ;
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "INSERT INTO user (name,email,password,role) VALUES (?,?,?,?)" ;
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,user.getName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPassword());
            ps.setString(4,user.getRole());
            status=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    @Override
    public List<User> getAllCustomer() {
        ResultSet rs ;
        List<User> users = new ArrayList<>();
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM user";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public User getCustomerByID(int id) {
        ResultSet rs;
        User user = new User();
        Connection con = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM user WHERE id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1 , id);
            rs = ps.executeQuery();
            while (rs.next()){
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

}
