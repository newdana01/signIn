package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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

    public  void useDatabase(){
        try{
            pstmt = con.prepareStatement("use sign_up");
            pstmt.execute();
            pstmt.clearParameters();
        }catch (Exception e1){
            e1.printStackTrace();
            try{
                if(con!=null) con.close();
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }
    }

    public void insertMember(MemberBeans mBean){ //회원가입 시 입력된 정보 insert
        try{
            getCon();
            useDatabase();
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

    public ArrayList<MemberBeans> selectAll(){ //전체 회원의 정보 조회
        ArrayList<MemberBeans> list = new ArrayList<>();

        try{
            getCon();
            useDatabase();
            String sql = "SELECT * FROM db_member";
            pstmt = con.prepareStatement(sql);
            res = pstmt.executeQuery();

            while (res.next()){
                MemberBeans mBeans = new MemberBeans();

                mBeans.setId(res.getString(1));
                mBeans.setEmail(res.getString(3));
                mBeans.setTel(res.getString(4));
                mBeans.setField(res.getString(5));
                mBeans.setJob(res.getString(6));
                mBeans.setAge(res.getString(7));
                mBeans.setInfo(res.getString(8));

                list.add(mBeans);
            }
        }catch (Exception e1){
            e1.printStackTrace();
        }finally {
            try{
                if (res!=null) res.close();
                if(pstmt!=null)pstmt.close();
                if(con!=null) con.close();
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }
        return list;
    }

    public MemberBeans selectMember(String id){ //특정 아이디를 가진 회원의 정보 조회
        MemberBeans mBeans = new MemberBeans();

        try{
            getCon();
            useDatabase();
            String sql = "SELECT * FROM db_member WHERE id =?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,id);
            res = pstmt.executeQuery();

            if(res.next()){
                mBeans.setId(res.getString(1));
                mBeans.setEmail(res.getString(3));
                mBeans.setTel(res.getString(4));
                mBeans.setField(res.getString(5));
                mBeans.setJob(res.getString(6));
                mBeans.setAge(res.getString(7));
                mBeans.setInfo(res.getString(8));
            }
        }catch (Exception e1){
            e1.printStackTrace();
        }finally {
            try{
                if (res!=null) res.close();
                if(pstmt!=null)pstmt.close();
                if(con!=null) con.close();
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }
        return mBeans;
    }

    public String getPass(String id){ //특정 아이디를 가진 회원의 정보 조회
        String pass = "";

        try{
            getCon();
            useDatabase();
            String sql = "SELECT pass1 FROM db_member WHERE id =?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,id);
            res = pstmt.executeQuery();

            if(res.next()){
                pass = res.getString("pass1");
            }
        }catch (Exception e1){
            e1.printStackTrace();
        }finally {
            try{
                if (res!=null) res.close();
                if(pstmt!=null)pstmt.close();
                if(con!=null) con.close();
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }
        return pass;
    }
}
