<%-- 
    Document   : woroworo
    Created on : Dec 17, 2016, 10:04:57 AM
    Author     : praktek
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style type="text/css">
     /*   label{
            border:none; 
        }
        table{
            border: 1px solid blue;
            padding: 5px 5px;
        }
        
        td{border: none;}
        
        .z{
            border:none;
            padding-left: 10%;
            padding-right: 10%;
        }
        .t{
            width: 200px;
            margin-top: 40px;
            margin-bottom:20px;}
               textarea{
           border-top: none;
           border-right: none;
           border-left:none;
           border-bottom: 0.5px solid blue;
            height: 40px;
            width: 325px;
            margin:auto;
        }*/
    </style>
    <link rel="stylesheet" type="text/css" href="input.css"/>
    <body>  
    <center>
        <div id="log">
        <h1>Woro Woro</h1><hr/>
        <form action="Pengumuman" method="post" enctype="multipart/form-data" >
        <table>
            <tr>
                <td>Pembunuhan</td>
            
                <td>: <input type="checkbox" name="a" value="Pembunuhan"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Pembunuhan" name="a"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Pembunuhan" name="a"/></td>
            </tr>
            <tr>
                <td>Perampokan</td>
                <td>: <input type="checkbox" value="Perampokan" name="a"/><input type="checkbox" value="Perampokan" name="a"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Perampokan" name="a"/><input type="checkbox" value="Perampokan" name="a"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Perampokan" name="a"/><input type="checkbox" value="Perampokan" name="a"/></td>
            </tr>
            <tr>
                <td>Kebakaran</td>
                <td>: <input type="checkbox" value="Kebakaran" name="a"/><input type="checkbox" value="Kebakaran" name="a"/><input type="checkbox" value="Kebakaran" name="a"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Kebakaran" name="a"/><input type="checkbox" value="Kebakaran" name="a"/><input type="checkbox" value="Kebakaran" name="a"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Kebakaran" name="a"/><input type="checkbox" value="Kebakaran" name="a"/><input type="checkbox" value="Kebakaran" name="a"/></td>
            </tr>
            <tr>
                <td>Bencana Alam</td>
                <td>: <input type="checkbox" value="Bencana Alam" name="a"/><input type="checkbox" value="Bencana Alam" name="a"/><input type="checkbox" value="Bencana Alam" name="a"/><input type="checkbox" value="Bencana Alam" name="a"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Bencana Alam" name="a"/><input type="checkbox" value="Bencana Alam" name="a"/><input type="checkbox" value="Bencana Alam" name="a"/><input type="checkbox" value="Bencana Alam" name="a"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Bencana Alam" name="a"/><input type="checkbox" value="Bencana Alam" name="a"/><input type="checkbox" value="Bencana Alam" name="a"/><input type="checkbox" value="Bencana Alam" name="a"/>&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td>Pencurian Hewan</td>
                <td>: <input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/><input type="checkbox" value="Pencurian Hewan" name="a"/></td>
            </tr>
            <tr>
                <td>Uluk Uluk</td>
                <td>: <input type="checkbox" value="Keadaan Kembali Aman" name="a"/><input type="checkbox" value="Keadaan Kembali Aman" name="a"/><input type="checkbox" value="Keadaan Kembali Aman"  name="a"/> <input type="checkbox" value="Keadaan Kembali Aman"  name="a"/><input type="checkbox" value="Keadaan Kembali Aman"  name="a"/><input type="checkbox" value="Keadaan Kembali Aman"  name="a"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Keadaan Kembali Aman" name="a"/><input type="checkbox" value="Keadaan Kembali Aman" name="a"/><input type="checkbox" value="Keadaan Kembali Aman"  name="a"/> <input type="checkbox" value="Keadaan Kembali Aman"  name="a"/><input type="checkbox" value="Keadaan Kembali Aman"  name="a"/><input type="checkbox" value="Keadaan Kembali Aman"  name="a"/>&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Keadaan Kembali Aman" name="a"/><input type="checkbox" value="Keadaan Kembali Aman" name="a"/><input type="checkbox" value="Keadaan Kembali Aman"  name="a"/> <input type="checkbox" value="Keadaan Kembali Aman"  name="a"/><input type="checkbox" value="Keadaan Kembali Aman"  name="a"/><input type="checkbox" value="Keadaan Kembali Aman"  name="a"/></td>

            </tr>
            <tr>
                <td>Uraian</td>
                <td>&nbsp; <textarea name="uraian"></textarea>
                    <input type="hidden" name="waktu" value="<%=new Date()%>"/>
                </td>
            </tr>
            <tr>
                <td>Korban</td>
                <td>: <input type="text" name="korban"/></td>
            </tr>
            <tr>
                <td>Lokasi</td>
                <td>: <input type="text" name="lokasi"/></td>
            </tr>
            <tr>
                <td>Foto</td>
                <td>: <input type="file" name="nfile"/></td><hr>
            </tr>
            <tr><td class="z" colspan="2"><center>
                    <input class="t" type="submit" value="Kirim" name="cmdkirim"/>
                    <input class="t" type="reset" value="Batal" name=""/></center></td></tr>
        </table>
        </form>
        </div>
    </center>
    </body>
</html>
