package gp3.daos;

import gp3.helpers.DBHelpers;
import gp3.models.Booking;
import gp3.models.BookingDetail;
import gp3.models.Table;
import gp3.models.TableBook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookingDao {

    public int createBooking(Booking booking) {
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "INSERT INTO booking (date, time, customer_customerid) VALUES (?, ?, ?)";
        int generatedId = 0;

        try (PreparedStatement preparedStatement = connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS)) {
            preparedStatement.setString(1, booking.getDate());
            preparedStatement.setString(2, booking.getTime());
            preparedStatement.setInt(3, booking.getCustomerid());

            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected == 1) {
                // Retrieve the generated ID if the insertion was successful.
                ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
                if (generatedKeys.next()) {
                    generatedId = generatedKeys.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle any potential database errors here.
        }

        return generatedId;
    }


//    public int createBooking(Booking booking) {
//        int status = 0;
//        Connection connection = DBHelper.getInstance().getConnection();
//        String query = "INSERT INTO booking (date,time,customer_customerid) VALUES (?,?,?)";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setString(1, booking.getDate());
//            ps.setString(2, booking.getTime());
//            ps.setInt(3, booking.getCustomerid());
//            status = ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return status;
//    }

    public int createBookingDetail(BookingDetail bookingDetail) {
        int status = 0;
        Connection connection = DBHelpers.getInstance().getConnection();
        String query = "INSERT INTO bookingdetail (tablename,booking_id) VALUES (?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, bookingDetail.getTable());
            ps.setInt(2, bookingDetail.getBookingid());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
//    public int createBookingDetail(BookingDetail bookingDetail, int bookingid) {
//        int status = 0;
//        Connection connection = DBHelper.getInstance().getConnection();
//        String query = "INSERT INTO bookingdetail (tablename,booking_id) VALUES (?,?)";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setString(1, bookingDetail.getTable());
//            ps.setInt(2,bookingDetail.getBookingid());
//            status = ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return status;
//    }

//    public Booking selectBooking(String customername,String password) {
//        Customer customer = null;
//        Connection connection = DBHelper.getInstance().getConnection();
//        String query = "SELECT * FROM customer WHERE customername=? AND password=?";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setString(1,customername);
//            ps.setString(2,password);
//            ResultSet rs = ps.executeQuery();
//            if(rs.next()) {
//                customer = new Customer();
//                customer.setCustomername(rs.getString("customername"));
//                customer.setPassword(rs.getString("password"));
//                customer.setCustomerid(rs.getInt("customerid"));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return customer;
//    }




}
