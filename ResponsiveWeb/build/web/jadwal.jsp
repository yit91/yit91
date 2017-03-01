<%-- 
    Document   : jadwal
    Created on : 04-Dec-2016, 00:43:47
    Author     : EDI PRAYITNO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ac.id.budiluhur.yit91.Peserta"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="ac.id.budiluhur.yit91.Koneksi"%>
<!DOCTYPE html>
<html>
    <head></head>
      <style>
        th{
            width: 100px;}
        select{
            height: 25px;
            width: 70px;}
        tr:hover{
    background-color: silver;
    color: white;
   
}
td{height: 20px;}

    </style>
    <link rel="stylesheet" type="text/css" href="input.css"/>
    <body>
    <center>
        <h2>Jadwal Poskamling</h2><hr/><hr/>
    <form action="home.jsp?id=jad" method="post">
            <select name="pos">
               <option value="">POS</option>
               <option value="1">1</option>
               <option value="2">2</option>
               <option value="3">3</option>
            </select>
           
            <select name="hari">
                <option value="">Hari</option>
               <option value="Senin">Senin</option>
               <option value="Selasa">Selasa</option>
               <option value="Rabu">Rabu</option>
               <option value="Kamis">Kamis</option>
               <option value="Jumat">Jum'at</option>
               <option value="Sabtu">Sabtu</option>
               <option value="Minggu">Minggu</option>
           </select>
            <input type="submit" value="Cari"/>
            <div style="overflow-y: auto;">
            <table >
          <th>NIK</th><th>Nama</th><th>Alamat</th><th>POS</th><th>Mulai</th><th>Selesai</th><th>Tanggal</th><th>Hari</th>
      
        <%
        Peserta obj = new Peserta();
        if(request.getParameter("pos")!=null){
        try{//Koneksi konek=new Koneksi();
           Class.forName("com.mysql.jdbc.Driver");
           Connection kon = DriverManager.getConnection("jdbc:mysql://localhost/biodata", "root", "" );
        obj.setPos(request.getParameter("pos"));
        obj.setHari(request.getParameter("hari"));
        String pos= obj.getPos().toString();
        String hari= obj.getHari().toString();
         Statement stm=kon.createStatement();
         String query="select * from anggota where pos='"+pos+"' and hari='"+hari+"'";
         ResultSet rs=stm.executeQuery(query);
   while(rs.next()){%>
         <tr>
             <td><%=rs.getString(2)%></td>
             <td><%=rs.getString(3)%></td>
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

         <%}%>
      </table> 
            </div>
        </form><br/><br/>
    </center>
    </body>
</html>
