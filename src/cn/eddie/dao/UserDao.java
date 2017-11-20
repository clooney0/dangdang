package cn.eddie.dao;

import cn.eddie.entity.User;
import cn.eddie.util.JdbcUtils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    private JdbcUtils util = new JdbcUtils();

    public UserDao() {
        util.getConnection();
    }

    //querySingle
    public User queryUser(String username,String phone) {
        String sql ="Select * From t_user Where username=? or phone=?";
        List<Object> params = new ArrayList<Object>();
        params.add(username);
        params.add(phone);
        User result;
        try {
            result = util.findSimpleRefResult(sql, params, User.class);
            util.releaseConn();
            return result;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }
    }
    
    //queryUsername
    public User queryUsername(String username) {
        String sql ="Select * From t_user Where username=? ";
        List<Object> params = new ArrayList<Object>();
        params.add(username);
       
        User result;
        try {
            result = util.findSimpleRefResult(sql, params, User.class);
            util.releaseConn();
            return result;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }
    }

    //checkLogin
    public User checkLogin(String username,String password) {
        String sql ="Select * From t_user Where username=? and password=?";
        List<Object> params = new ArrayList<Object>();
        params.add(username);
        params.add(password);
        User result;
        try {
            result = util.findSimpleRefResult(sql, params, User.class);
            util.releaseConn();
            return result;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }
    }


    //add
    public boolean addUser(User user) {
        String sql = "insert into t_user values(null,?,?,?)";
        List<Object> params = new ArrayList<Object>();
        params.add(user.getUsername());
        params.add(user.getPhone());
        params.add(user.getPassword());
        boolean flag;
        try {
            flag = util.updateByPreparedStatement(sql, params);
            util.releaseConn();
            return flag;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }

    }



}
