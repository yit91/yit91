<%-- 
    Document   : view
    Created on : 04-Dec-2016, 16:59:01
    Author     : EDI PRAYITNO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link type="text/css" rel="stylesheet" href="style.css"/>
    <style type="text/css">
        #log{
            margin: 5% 10%;
        }
        td{border-collapse: collapse;}
    </style>
    <link rel="stylesheet" type="text/css" href="input.css"/>
    <body>
    <center>
        <h2>Edit Data Anggota</h2><hr/><hr/>
        <table>
        <div id="">
       <form action="Simpan" method="post">
           <tr>
               <td>NIK</td>
               <td><input type="text" maxlength="16" name="nik" value="${nik}"/></td>
           </tr>
                      <tr>
               <td>Nama</td>
               <td><input type="text" name="nama" value="${nama}"/></td>
           </tr>
                      <tr>
               <td>Alamat</td>
               <td><input type="text" name="alamat" value="${alamat}"/></td>
           </tr>
                      <tr>
               <td>POS</td>
               <td><input type="text" name="pos" value="${pos}"/></td>
           </tr>
                      <tr>
               <td>Jam Mulai</td>
               <td> <input type="text" maxlength="6" name="mulai" value="${mulai}"/> </td>
           </tr>
                      <tr>
               <td>Jam Selesai</td>
               <td><input type="text" maxlength="6" name="selesai" value="${selesai}"/></td>
           </tr>
                      <tr>
               <td>Tanggal</td>
               <td><input type="text" maxlength="8" name="tgl" value="${tgl}"/></td>
           </tr>
                      <tr>
               <td>Hari</td>
               <td><input type="text" name="hari" value="${hari}"/> </td>
           </tr>
           <tr>
               <td colspan="2"><input type="submit" name="cmdcari" value="Cari"/>
           <input type="submit" name="cmdubah" value="Ubah" />
           <input type="submit" name="cmdhapus" value="Hapus" /> </td>
           </tr><br/><br/>
       </form>
        </div>
        </table><br><br/>
    </center>
    </body>
</html>         
                    
           
               
                  
         
                 

