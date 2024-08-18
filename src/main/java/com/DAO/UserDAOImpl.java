package com.DAO;

import com.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAOImpl implements UserDAO {
    private Connection conn;

    public UserDAOImpl(Connection conn) {
        this.conn = conn;
    }


    @Override
    public boolean userRegister(User user) {
        boolean f=false;

        try {
            String sql = "insert into user(name, email, phno, password) values(?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPhno());
            ps.setString(4, user.getPassword());

            int i = ps.executeUpdate();
            if(i==1) {
                f=true;
            } else f = false;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    @Override
    public User login(String email, String password) {
        User user = null;
        try {
            String sql = "select * from user where email = ? and password = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                user = new User();

                user.setId(rs.getInt(1));
                user.setName(rs.getString(2));
                user.setEmail(rs.getString(3));
                user.setPhno(rs.getString(4));
                user.setPassword(rs.getString(5));
                user.setAddress(rs.getString(6));
                user.setLandmark(rs.getString(7));
                user.setCity(rs.getString(8));
                user.setState(rs.getString(9));
                user.setPincode(rs.getString(10));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    @Override
    public boolean checkPassword(int id, String password) {
        boolean f=false;

        try {
            String sql = "select * from user where id=? and password=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, id);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public boolean updateProfile(User user) {
        boolean f = false;

        try {
            String sql = "update user set name=?, email=?, phno=? where id=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPhno());
            ps.setInt(4, user.getId());

            int check = ps.executeUpdate();

            if(check==1) f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public boolean checkUser(String email) {
        boolean f = false;

        try {
            String sql = "select * from user where email=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }


}
