package gp3.models;

public class Booking {
    private int bookingid;

    public int getBookingid() {
        return bookingid;
    }

    public void setBookingid(int bookingid) {
        this.bookingid = bookingid;
    }

    private String date;
    private String time;
    private int customerid;

    public Booking() {
    }

    public Booking(String date, String time, int customerid) {
        this.date = date;
        this.time = time;
        this.customerid = customerid;
    }

    public int getCustomerid() {
        return customerid;
    }

    public void setCustomerid(int customer_customerid) {
        this.customerid = customer_customerid;
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
