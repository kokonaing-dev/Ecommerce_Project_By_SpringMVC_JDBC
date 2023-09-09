package gp3.daos;

import gp3.models.Menu;

import java.util.List;

public interface MenuDao {

    int createMenu(Menu menu);

    List<Menu> getAllMenu();

    int deleteMenu(int id);

    int editMenu(Menu menu);

    Menu getMenuById(int id);


    //under maintain
    List<Menu> getCatMenu(int category);

    List<Menu> searchMenu(String search);


}
