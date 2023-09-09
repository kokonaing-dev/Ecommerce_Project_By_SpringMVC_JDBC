package gp3.models;

import javax.persistence.Transient;
import javax.validation.constraints.Size;

public class Orders {

    private int id , count , price ;
    private String product_name ;
    private int cust_id ;

    @Transient
    private String created_up;

    private boolean enabled;

    private String address ;

    private String phone ;

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
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

    public Orders() {
    }

    public Orders(String product_name, int count, int price, int cust_id) {
        this.product_name = product_name;
        this.count = count;
        this.price = price;
        this.cust_id = cust_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public int getCust_id() {
        return cust_id;
    }

    public void setCust_id(int cust_id) {
        this.cust_id = cust_id;
    }

    public String getCreated_up() {
        return created_up;
    }

    public void setCreated_up(String created_up) {
        this.created_up = created_up;
    }
}
