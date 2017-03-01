<%-- 
    Document   : daftar
    Created on : 04-Dec-2016, 13:15:13
    Author     : EDI PRAYITNO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <link rel="stylesheet" type="text/css" href="input.css"/>
    </head>
    <body bgcolor="#f2f2f2">
    <center>
        <div id="log">
        <form action="simpan" method="post">
            <h2>Registrasi<hr/>
            <input type="text" name="nim" placeholder="No. KTP" maxlength="10" /><br/>
            <input type="text" name="nama" placeholder="Nama/Username" /><br/>
            <input type="password" name="password" placeholder="Password"/><br/>
            <input type="text" name="level" placeholder="level" maxlength="1"/><br/>
            <input type="submit" name="cmdsimpan" value="Simpan"/>
            <input type="reset" name="" value="Batal"/><br/><hr/>
            Poskamling Terpadu
            </h2>
        </form>
        </div>
    </center>
    </body>
</html>
