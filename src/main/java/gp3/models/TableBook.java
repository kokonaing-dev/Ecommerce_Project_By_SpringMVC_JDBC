package gp3.models;

public class TableBook {
    private int id;

    public TableBook(String date, String time) {
        this.date = date;
        this.time = time;
    }

    public TableBook() {
    }

    private String tablename,date,time,bname,phone,nog,sr;

    public TableBook(String tablename, String date, String time, String bname, String phone, String nog, String sr) {
        this.tablename = tablename;
        this.date = date;
        this.time = time;
        this.bname = bname;
        this.phone = phone;
        this.nog = nog;
        this.sr = sr;
    }

    public String getNog() {
        return nog;
    }

    public void setNog(String nog) {
        this.nog = nog;
    }

    public String getSr() {
        return sr;
    }

    public void setSr(String sr) {
        this.sr = sr;
    }



    public String getTablename() {
        return tablename;
    }

    public void setTablename(String tablename) {
        this.tablename = tablename;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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
