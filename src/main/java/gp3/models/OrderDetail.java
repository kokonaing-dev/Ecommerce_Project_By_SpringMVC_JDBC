package gp3.models;


public class OrderDetail {

    private int id ;
    private int quantity;
    private int menu_item_id;
    private int order_id;

    public OrderDetail() {
    }

    public OrderDetail(int quantity ,int menu_item_id,int order_id) {
        this.quantity = quantity ;
        this.menu_item_id = menu_item_id;
        this.order_id = order_id ;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getMenu_item_id() {
        return menu_item_id;
    }

    public void setMenu_item_id(int menu_item_id) {
        this.menu_item_id = menu_item_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "id=" + id +
                ", quantity=" + quantity +
                ", menu_item_id=" + menu_item_id +
                ", order_id=" + order_id +
                '}';
    }
}
