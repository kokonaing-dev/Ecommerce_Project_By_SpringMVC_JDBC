package gp3.daos;

import gp3.models.User;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface UserDao {

    int createUser(User user);

    List<User> getAllCustomer();

    User getCustomerByID(int id);

    User getUserByEmail(User user);



}
