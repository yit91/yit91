/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.id.budiluhur.yit91;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author EDI PRAYITNO
 */
public class Koneksi {
    String driver, database, user, pass,url;
    public static boolean validate(String User, String Pass){
      boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

       String database = "jdbc:mysql://localhost:3306/";
       String url = "biodata";
       String driver = "com.mysql.jdbc.Driver";
       String user = "root";
       String  pass = ""; 
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(database + url, user, pass);

            pst = conn.prepareStatement("select * from login where username=? and password=?");
            pst.setString(1, User);
            pst.setString(2, Pass);
            rs = pst.executeQuery();
            status = rs.next();

        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException e) {
            System.out.println(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }
    public Koneksi(){
                        driver = "com.mysql.jdbc.Driver";
                        database = "jdbc:mysql://localhost/biodata";
                        user = "root";
                        pass = "";  
    }
            String sql="";
        int i;
        public void Input (String[] kolom, String[] isi, String nmtable){
            try{
                sql = "insert into "+nmtable+"(";
                for (i=0; i<kolom.length; i++){
                    sql+=kolom[i];
                    if(i<kolom.length-1)
                        sql+=",";
                }
                sql+=") values (";
                for(i=0; i<kolom.length; i++){
                    sql+=" '"+isi[i]+"'";
                    if(i<kolom.length-1)
                        sql+=",";
                }
                sql+=")";
                       /* String driver = "com.mysql.jdbc.Driver";
                        String database = "jdbc:mysql://localhost/biodata";
                        String user = "root";
                        String pass = "";    */           

                Class.forName(driver);
                Connection kon = DriverManager.getConnection(database, user, pass );
                Statement stt = kon.createStatement();
                System.out.println(sql);
                stt.executeUpdate(sql);
                stt.close();
                kon.close();
            }catch (Exception e){
                System.out.println(e);
            }
        } 
             public void Edit(String[] kolom, String[] isi, String nmtable, String primarykey, String data){
            try{
                sql = "UPDATE "+nmtable+" set ";
                for (i=0; i<kolom.length; i++){
                    sql+=kolom[i]+"= '"+isi[i]+"'";
                    if(i<kolom.length-1)
                        sql+=",";
                }
                sql+="WHERE "+primarykey+" = '"+data+"' ";
                Class.forName(driver);
                Connection kon= DriverManager.getConnection(database, user, pass);
                Statement stt = kon.createStatement();
                System.out.println(sql);
                stt.executeUpdate(sql);
                stt.close();
                kon.close();
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
        
        public void Hapus(String nmtable, String primarykey, String data){
            try{
               sql="DELETE FROM "+nmtable+" WHERE "+primarykey+" = '"+data+"' ";
               Class.forName(driver);
               Connection kon = DriverManager.getConnection(database, user, pass);
               Statement stt = kon.createStatement();
               System.out.println(sql);
               stt.executeUpdate(sql);
               stt.close();
               kon.close();
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
        Peserta obj =new Peserta();
        public String Cari(String primarykey,String isi,String nmtable){
            String data="";
            try{
              sql= "select * FROM "+nmtable+" WHERE "+primarykey+"='"+isi+"'";
              Class.forName(driver);
              Connection kon = DriverManager.getConnection(database, user, pass);
               Statement stt = kon.createStatement();
               //System.out.println(sql);
               //stt.executeUpdate(sql);
               ResultSet res = stt.executeQuery(sql);
               if(res.next()){
                   obj.setNik(res.getString(2));
                   obj.setNama(res.getString(3));
                   obj.setAlamat(res.getString(4));
                   obj.setPos(res.getString(5));
                   obj.setAjam(res.getString(6));
                   obj.setBjam(res.getString(7));
                   obj.setTgl(res.getString(8));
                   obj.setHari(res.getString(9));
               }
               res.close();
               stt.close();
               kon.close();
            }catch (Exception ex){
                System.out.println(ex.getMessage());
            }
        return obj.getNik()+","+obj.getNama()+","+obj.getAlamat()+","+obj.getPos()+","+obj.getAjam()+","+obj.getBjam()+","+obj.getTgl()+","+obj.getHari();
        }
}
