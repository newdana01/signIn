package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306";
    String user = "root";
    String pass ="1234";

    Connection con;
    PreparedStatement pstmt;
    ResultSet res;

    public void getCon(){
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(url, user, pass);
        }catch (Exception e1){
            e1.printStackTrace();
            try{
                if(con!=null) con.close();
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }
    }

    public void insertMember(MemberBeans mBean){
        try{
            getCon();
            pstmt = con.prepareStatement("use sign_up");
            pstmt.execute();
            pstmt.clearParameters();
            String sql = "INSERT INTO db_member VALUES (?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, mBean.getId());
            pstmt.setString(2, mBean.getPw1());
            pstmt.setString(3, mBean.getEmail());
            pstmt.setString(4, mBean.getTel());
            pstmt.setString(5, mBean.getField());
            pstmt.setString(6, mBean.getJob());
            pstmt.setString(7, mBean.getAge());
            pstmt.setString(8, mBean.getInfo());
            pstmt.executeUpdate();


        }catch (Exception e1){
            e1.printStackTrace();
        }finally {
            try{
                if(pstmt!=null)pstmt.close();
                if(con!=null) con.close();
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }
    }
}
