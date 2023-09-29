package gp3.daos;

import gp3.helpers.DBHelpers;
import gp3.models.Customer;
import gp3.models.Table;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerDao {
    public int createCustomer(Customer customer) {
        int status = 0;
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "INSERT INTO customer (customername,password,phone,address) VALUES (?,?,?,?)";

        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, customer.getCustomername());
            ps.setString(2, customer.getPassword());
            ps.setString(3, customer.getPhone());
            ps.setString(4, customer.getAddress());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }

    public Customer selectCustomer(String customername,String password) {
        Customer customer = null;
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM customer WHERE customername=? AND password=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1,customername);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                customer = new Customer();
                customer.setCustomername(rs.getString("customername"));
                customer.setPassword(rs.getString("password"));
                customer.setCustomerid(rs.getInt("customerid"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }

    public List<Customer> getAllCustomers() {
        List<Customer> customers = new ArrayList<>();
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "SELECT * FROM customer";
        ResultSet rs;
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setCustomerid(rs.getInt("id"));
                customer.setCustomername(rs.getString("name"));
                customer.setPassword(rs.getString("password"));
                customer.setPhone(rs.getString("phone"));
                customer.setAddress(rs.getString("address"));
                customers.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    }
