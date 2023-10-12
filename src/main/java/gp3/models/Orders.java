package gp3.models;

import javax.persistence.Transient;
import javax.validation.constraints.Size;
import java.sql.Date;

public class Orders {

    private int id ;
    private Date date;
    private double total ;
    private String address;
    private String phone;
    private int user_id;

    public Orders() {
    }

    public Orders(double total,String address ,String phone , int user_id) {
        this.total = total;
        this.address = address ;
        this.phone = phone ;
        this.user_id = user_id ;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", date=" + date +
                ", total=" + total +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", user_id=" + user_id +
                '}';
    }
}
