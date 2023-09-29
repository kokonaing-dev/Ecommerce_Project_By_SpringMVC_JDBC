package gp3.models;

public class BookingDetail {
    private String table;
    private int bookingid;

    public BookingDetail(String table, int bookingid) {
        this.table = table;
        this.bookingid = bookingid;
    }

    public BookingDetail() {
    }

    public int getBookingid() {
        return bookingid;
    }

    public void setBookingid(int bookingid) {
        this.bookingid = bookingid;
    }

    public BookingDetail(String table) {
        this.table = table;
    }





    public String getTable() {
        return table;
    }

    public void setTable(String table) {
        this.table = table;
    }
}
