package gp3.models;

import javax.persistence.Transient;

public class Delivery {
    private int id ;
    private String customer_name;
    private String address;
    private String phone;
    private String totalamount ;
    private int order_id;
    @Transient
    private String create_up ;

    public Delivery() {
    }

    public Delivery(String customer_name, String address, String phone,String totalamount, int order_id) {
        this.customer_name = customer_name;
        this.address = address;
        this.phone = phone;
        this.totalamount = totalamount ;
        this.order_id = order_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        this.customer_name = customer_name;
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

    public String getTotalamount() {
        return totalamount;
    }

    public void setTotalamount(String totalamount) {
        this.totalamount = totalamount;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getCreate_up() {
        return create_up;
    }

    public void setCreate_up(String create_up) {
        this.create_up = create_up;
    }

    @Override
    public String toString() {
        return "Delivery{" +
                "id=" + id +
                ", customer_name='" + customer_name + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", totalamount='" + totalamount + '\'' +
                ", order_id=" + order_id +
                ", create_up='" + create_up + '\'' +
                '}';
    }
}
