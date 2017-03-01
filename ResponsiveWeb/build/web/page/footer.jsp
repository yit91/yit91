<%-- 
    Document   : footer
    Created on : 04-Dec-2016, 21:15:04
    Author     : EDI PRAYITNO
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
           /*  #footer{
               background-color: #7fbc41;
                font-size: 16px;
                text-align: center;
                font-weight: bold;
                height: 20px;
                width: 99.5%;
                border-style: outset;
                float: left;
                color: white;
              
            }
           #footer{
height:30px;
border-style: outset;
position:relative;
width:100%;
bottom:-110px;
z-index:10;
background-color: #7fbc41;
float:left;
font-weight: bold;
color: white;
font-size: 16px;
text-align: center;
           }*/
        </style>
    </head>
    <body>
        copyright2016 -
        <%
        Date tgl = new Date();
        String tg = new String("");
        SimpleDateFormat format = new SimpleDateFormat("YYYY");
        tg=format.format(tgl);
        out.print(tg);
        %>
     @ediprayitno
    </body>
</html>
