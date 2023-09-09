package gp3.models;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.Transient;

public class Table {
    private int id;
    private String tablename;

    public Table() {
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Table(String tablename) {
        this.tablename = tablename;
    }

    public String getTablename() {
        return tablename;
    }

    public void setTablename(String tablename) {
        this.tablename = tablename;
    }
}
