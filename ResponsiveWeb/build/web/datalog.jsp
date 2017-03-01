<%-- 
    Document   : datalog
    Created on : 15-Jan-2017, 17:31:02
    Author     : EDI PRAYITNO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Data Login</h1><hr><hr/>
        <div style="overflow-x: auto; overflow-y: scroll; height: 200px;">
        <table>
    <th>Username</th><th>LogTime</th><th>IP Addres</th><th>NIK</th>
      
        <%
        try{//Koneksi konek=new Koneksi();
           Class.forName("com.mysql.jdbc.Driver");
           Connection kon = DriverManager.getConnection("jdbc:mysql://localhost/biodata", "root", "" );
         Statement stm=kon.createStatement();
         String query="select * from datalog inner join login on datalog.username=login.username order by datalog.no_log desc";
         ResultSet rs=stm.executeQuery(query);
   while(rs.next()){%>
         <tr>
             <td><%=rs.getString(2)%></td>
             <td style="width: 210px;"><%=rs.getString(3)%></td>
             <td><%=rs.getString(4)%></td>
             <td><%=rs.getString(5)%></td>
         </tr>
      
        <%}
         rs.close();
         kon.close();
       }
       catch(Exception e){
           out.print(e);
       }
        %>
        </table>
    </div>
    </center>
    </body>
</html>
