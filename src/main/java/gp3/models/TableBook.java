package gp3.models;

public class TableBook {
    private int id;

    public TableBook(String date, String time) {
        this.date = date;
        this.time = time;
    }

    public TableBook() {
    }

    private String tablename,date,time;


    public String getTablename() {
        return tablename;
    }

    public void setTablename(String tablename) {
        this.tablename = tablename;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
