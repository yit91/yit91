<%-- 
    Document   : tampil
    Created on : 18-Dec-2016, 13:02:30
    Author     : EDI PRAYITNO
--%>

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
        th,td{border-bottom: 1px solid blue; padding-left: 5px; width: 120px;text-align: left;}
        textarea{
            border: 1px solid blue;
            text-align: left;
            width: 500px;
            height: 100px;
            padding: 10px 10px;
            margin-top: 10px;
            font-weight: bolder;
            font-size:16px;
        }
    </style>
    <body>
    <center>
        <h2>Keluhan Warga</h2><hr/><hr/>
         <table>
             <th>NIK</th><th>Nama</th><th>Alamat</th><th colspan="4">Privasi</th>

        <%

       try{//Koneksi konek=new Koneksi();
           Class.forName("com.mysql.jdbc.Driver");
                Connection kon = DriverManager.getConnection("jdbc:mysql://localhost/biodata", "root", "" );
      
         Statement stm=kon.createStatement();
         String query="select * from pengaduan order by waktu desc";
         ResultSet rs=stm.executeQuery(query);
         //String var="";
         
         while(rs.next()){%>

         <tr  >
             <td><%=rs.getString(2)%></td>
             <td><%=rs.getString(3)%></td>
             <td><%=rs.getString(4)%></td>
             <td ><%=rs.getString(6)%></td>
             <td><a href='admin.jsp?id=<%=rs.getString(1)%>'>Lihat</a></td>
             
         </tr>

         <%}%><%
        rs.close();
        kon.close();

       }
       catch(Exception e){
           out.print(e);
       }
       %>
</table><br/><br/>
                 <%
       
    String tam = request.getParameter("id");
    if(tam !=null){
          Class.forName("com.mysql.jdbc.Driver");
                Connection kon = DriverManager.getConnection("jdbc:mysql://localhost/biodata", "root", "" );
        String id = request.getParameter("id");
        String query1 ="select * from pengaduan where no_aduan='"+id+"'";
        Statement stm=kon.createStatement();
        ResultSet res = stm.executeQuery(query1);
        if(res.next()){%>
        <b>Isi Keluhan</b><br/>
        <b>Pelapor : <%=res.getString(3)%></b><br>
        <b>Waktu : <%=res.getString(7)%></b>
        <form action="aduan" method="post">
            <input type="hidden" name="nik" value="<%=res.getString(1)%>"/>
            <textarea><%=res.getString(5)%></textarea><br><br><br>
        <input type="submit" value="Tolak" name="cmdtolak"/>
        <input type="submit" value="Terima" name="cmdterima"/>
        <input type="submit" value="Proses" name="cmdproses"/>
        </form><br/>

         <%
            
        }res.close();
        kon.close();
    }%>
    </center>
    </body>
</html>