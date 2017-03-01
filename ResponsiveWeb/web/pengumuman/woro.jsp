
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="ac.id.budiluhur.yit91.Peserta"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="ac.id.budiluhur.yit91.Koneksi"%>

<html>
    <head></head>
    <link rel="stylesheet" type="text/css" href="input.css"/>
    <style>
table,td,th{border: none; border-collapse: collapse;padding-left: 5px;}
        tr:hover{background-color: gainsboro; color: green;}
        th,td{border-bottom: 1px solid blue; padding-left: 5px;}

    </style>
    <body>
    <center>
        <h2>Laporan Warga</h2><hr/><hr/>
        <div>
         <table>
             <th>Kejadian</th><th>Waktu</th><th>Korban</th><th colspan="5">Lokasi</th>

        <%

       try{//Koneksi konek=new Koneksi();
           Class.forName("com.mysql.jdbc.Driver");
                Connection kon = DriverManager.getConnection("jdbc:mysql://localhost/biodata", "root", "" );
      
         Statement stm=kon.createStatement();
         String query="select * from woro order by waktu desc";
         ResultSet rs=stm.executeQuery(query);
         //String var="";
         
         while(rs.next()){%>

         <tr  >
             <td><%=rs.getString(2)%></td>
             <td><%=rs.getString(3)%></td>
             <td><%=rs.getString(5)%></td>
             <td ><%=rs.getString(6)%></td>
             <td ><a href='pengaduan/status.jsp?tom=<%=rs.getString(1) %>'><b>Lihat</b></a></td>
  
         </tr>
         <%}%><%
        rs.close();
        kon.close();

       }
       catch(Exception ex){
           out.print(ex);
       }
       %>
</table><br/>

    </center>
    </body>
</html>