package gp3.models;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.Transient;
import javax.transaction.Transactional;

@Transactional
public class Menu {

    private int id;
    private String item;
    private int price;
    private String content;
    private String image;
    private int category_id;

    @Transient
    private MultipartFile file;

    public Menu() {
    }

    public Menu(String item, int price, String content, String image, int category_id) {
        this.item = item;
        this.price = price;
        this.content = content;
        this.image = image;
        this.category_id = category_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
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

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }
}
