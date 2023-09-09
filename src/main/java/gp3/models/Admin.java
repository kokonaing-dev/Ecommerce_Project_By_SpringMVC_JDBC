package gp3.models;

public class Admin {
    private String adminname;
    private String adminpassword;

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public Admin() {
    }

    public Admin(String adminname, String adminpassword) {
        this.adminname = adminname;
        this.adminpassword = adminpassword;
    }

    public String getAdminpassword() {
        return adminpassword;
    }

    public void setAdminpassword(String adminpassword) {
        this.adminpassword = adminpassword;
    }
}
