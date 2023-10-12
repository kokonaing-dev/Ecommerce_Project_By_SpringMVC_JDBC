package gp3.models;

public class Invoice {

    private String item ;
    private String price ;
    private String content ;
    private String image;
    private double total ;
    private int quantity ;

    public Invoice() {
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Invoice{" +
                "item='" + item + '\'' +
                ", price='" + price + '\'' +
                ", content='" + content + '\'' +
                ", image='" + image + '\'' +
                ", total=" + total +
                ", quantity=" + quantity +
                '}';
    }
}
