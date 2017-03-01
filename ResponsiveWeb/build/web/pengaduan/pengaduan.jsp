<%-- 
    Document   : pengaduan
    Created on : 09-Dec-2016, 21:24:55
    Author     : EDI PRAYITNO
--%>

<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style type="text/css">
        td{
            border: none;
        }


    </style>
    <link rel="stylesheet" type="text/css" href="input.css"/>
    <body>
     <center>
         <div id="log">
<h1>Form Pengaduan</h1><hr/>
<form action="aduan" method="post">
<table>
<tr>
<td>No KTP</td>
<td><input type="text" name="nik"/></td>
</tr>
<tr>
<td>Nama</td>
<td><input type="text" name="nama"/></td>
</tr>
<tr>
<td>Alamat</td>
<td><textarea name="alamat" col=""></textarea></td>
</tr>
<tr>
<td>Keluhan </td>
<td><textarea name="keluhan"></textarea>
    <input type="hidden" name="waktu" value="<%=new Date()%>"/>
</td>
</tr>
<tr>
<td>Privasi</td>
<td>
    <input class="radio" type="radio" name="priv" value="ya"/>ya
        <input class="radio" type="radio" name="priv" value="tidak"/>tidak

</td>
</tr>
<tr>
    <td colspan="2"><center>
        <input type="submit" name="cmdkirim" value="Kirim"/>
        <input type="reset" name="" value="Batal"/></center>
    </td>
</tr><hr/>
</table>
</form><br/>Gunakanlah Kata Yang Baik<br/><br/>
         </div>
   <%
if(request.getParameter("par")!=null){
        Class.forName("com.mysql.jdbc.Driver");
        Connection kon = DriverManager.getConnection("jdbc:mysql://localhost/biodata", "root", "" );
        String i =request.getParameter("par");
        String query ="select * from status where nik_pengadu='"+i+"'";
        Statement sm=kon.createStatement();
        ResultSet rs = sm.executeQuery(query);
        if(rs.next()){
        out.print(rs.getString(3));
        }rs.close();
        kon.close();
}
if ((session.getAttribute("name") != null)){
//response.sendRedirect("index.jsp"); 
     Class.forName("com.mysql.jdbc.Driver");
        Connection kon = DriverManager.getConnection("jdbc:mysql://localhost/biodata", "root", "" );
        String id = session.getAttribute("name").toString();//request.getParameter("id");
        String query1 ="select * from login where username='"+id+"'";
        Statement stm=kon.createStatement();
        ResultSet res = stm.executeQuery(query1);
        if(res.next()){
%>
<a href="pengaduan/status.jsp?par=<%=res.getString(1)%>"><h3>Lihat Status pengaduan</h3></a>

<%}}
%>
</center>
    </body>
</html>



