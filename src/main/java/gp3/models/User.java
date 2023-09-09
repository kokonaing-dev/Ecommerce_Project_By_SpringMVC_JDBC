package gp3.models;

import gp3.validators.VaildCustom;
import org.springframework.stereotype.Component;

import javax.validation.constraints.Size;

@Component
public class User {

    private int id;

    @Size(min =4 ,max =20 ,message = "Name must be between 5 and 20")
    private String name;

    @VaildCustom(min =6 ,message = "Email length must be at least 6")
    private String email;

    @VaildCustom(min =6 ,message = "Password length must be at least 6")
    private String password;


    private String authority;

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    public User() {
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User(String name, String email, String password,  String authority) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.authority = authority;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", authority='" + authority + '\'' +
                '}';
    }
}
