<%-- 
    Document   : biodata
    Created on : 04-Dec-2016, 00:46:10
    Author     : EDI PRAYITNO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="ac.id.budiluhur.yit91.Peserta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style type="text/css">
        #log{
            margin: 5% 10%;
        }
        table,th,td{
            border-collapse: collapse;
            border:none;
            text-align: left;
            padding: 5px;
        }     td{width: 110px;}th{height: 30px;}
        tr:hover{background-color: skyblue;color:blue;}
        tr:nth-of-type(odd){background-color: #f2f2f2}
    </style>
    <link rel="stylesheet" type="text/css" href="input.css"/>
    <body>
    <center>
        <div id="log">
        <form action="Simpan" method="post"/>
        <h2>Keanggotaan<hr/>
        <input type="text" maxlength="16" name="nik" placeholder="NIK"/>
        <input type="text" name="nama" placeholder="Nama"/>
        <input type="text" name="alamat" placeholder="Alamat"/>
        <input type="text" name="pos" maxlength="1" placeholder="POS"/>
        <input type="text" maxlength="6" name="mulai" placeholder="Mulai/ Format HH:MM:SS"/>
        <input type="text" maxlength="6" name="selesai" placeholder="Selesai/ Format HH:MM:SS"/>
        <input type="text" maxlength="8" name="tgl" placeholder="Tanggal/ Format YYYY:MM:DD"/>
        <input type="text" name="hari" placeholder="Hari"/><br/>
        <input type="submit" name="cmdsimpan" value="Simpan"/>
        <input type="submit" name="cmdcari" value="Cari"/>
        <input type="reset" name="" value="Batal"/><hr/>
        Poskamling Terpadu</h2>
        </div>
        <div style="overflow-x: auto;overflow-y: scroll; height: 200px;">
        <table>
    <th>NIK</th><th>Nama</th><th>Alamat</th><th>POS</th><th>Mulai</th><th>Selesai</th><th>Tanggal</th><th>Hari</th>
      
        <%
        try{//Koneksi konek=new Koneksi();
           Class.forName("com.mysql.jdbc.Driver");
           Connection kon = DriverManager.getConnection("jdbc:mysql://localhost/biodata", "root", "" );
         Statement stm=kon.createStatement();
         String query="select * from anggota";
         ResultSet rs=stm.executeQuery(query);
   while(rs.next()){%>
         <tr>
             <td><%=rs.getString(2)%></td>
             <td style="width: 210px;"><%=rs.getString(3)%></td>
             <td><%=rs.getString(4)%></td>
             <td><%=rs.getString(5)%></td>
             <td><%=rs.getString(6)%></td>
             <td><%=rs.getString(7)%></td>
             <td><%=rs.getString(8)%></td>
             <td><%=rs.getString(9)%></td>
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
    </div><br/><br/>
           </center>
    </body>
</html>