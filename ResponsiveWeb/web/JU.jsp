<%-- 
    Document   : JU
    Created on : 25-Dec-2016, 10:08:21
    Author     : EDI PRAYITNO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 
       
    </head>
    <style>
        th{
            width: 100px;
        }
        select{
            height: 25px;
            width: 70px;
            
        }
    </style>
    <link rel="stylesheet" type="text/css" href="input.css"/>
    
    <body>
    <center>
        <div id="log">
        <h2>Jadwal Ronda</h2><hr><hr/>

<%@page import="ac.id.budiluhur.yit91.Peserta"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="ac.id.budiluhur.yit91.Koneksi"%>

       <form action="index.jsp?id=jad" method="post">
           
           <select name="pos">
               <option value="">Pos</option>
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
            <input type="submit" value="Cari"/><br/><br/>
      <table>
          <th>NIK</th><th>Nama</th><th>POS</th><th>Hari</th>
      
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
         String var="";
         
         while(rs.next()){%>
         <tr>
             <td><%=rs.getString(2)%></td>
             <td><%=rs.getString(3)%></td>
             <td><%=rs.getString(5)%></td>
             <td><%=rs.getString(9)%></td>
         </tr>


        <%}
         rs.close();
         kon.close();    
        }
       catch(Exception e){
           out.print(e);
       }}%>
      </table>   
       </form><br><br/>
        </div>
    </center>
    </body>
</html>
