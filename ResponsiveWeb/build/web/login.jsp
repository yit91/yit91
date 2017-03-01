<%-- 
    Document   : login
    Created on : 03-Dec-2016, 21:31:20
    Author     : EDI PRAYITNO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <link rel="stylesheet" type="text/css" href="input.css"/>
    </head>
    <body>
    <center>
       
        <div id="log">
            <% 
            request.getAttribute("n");
            %>
            <form action="validasi" method="post">
                <h2>Form Login<hr/>
                <input type="text" placeholder="Username" name="uname"/><br/>                
                <input type="password" placeholder="Password" name="upass"/><br/>
                <input type="submit"  name="cmdlogin" value="Login"/>
                <input type="reset" name="" value="Batal"/><br><hr/>
                <a href="index.jsp?id=daf">Register</a>
                </h2>
            </form>
        </div>
    </center>
    </body>
</html>
