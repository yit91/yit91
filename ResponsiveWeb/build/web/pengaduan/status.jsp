<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%-- 
    Document   : home
    Created on : 04-Dec-2016, 00:31:56
    Author     : EDI PRAYITNO
--%>
<%
if ((session.getAttribute("name") == null)||(session.getAttribute("name")=="")){
response.sendRedirect("../index.jsp");    
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../style.css"/>
    </head>
    <link rel="stylesheet" type="text/css" href="input.css"/>
    <style type="text/css">
        #myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* Display (latar belakang) */
.gambar {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 11; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Display content (gambar) */
.gambar-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Cisplay caption gambar*/
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Membuat Animasi */
.gambar-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* Tombbol Close */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* tampilan 100% untuk Layar kecil */
@media only screen and (max-width: 700px){
    .gambar-content {
        width: 100%;
    }
}
    </style>
<div class="header">
    <div class="card"><img src="../page/img/bl.png" alt="bl" style="width: 80px"><div class="container"><%=session.getAttribute("name")%></div></div>
  <h1>POSKAMLING TERPADU</h1>
</div>

<div class="row">

<div class="col-3 menu">
  <ul>
    <a href="../admin.jsp"><li>Home</li></a>
    <a href="../admin.jsp?id=jad"><li>Jadwal</li></a>
    <a href="../admin.jsp?id=pst"><li>Peserta</li></a>
    <a href="../admin.jsp?id=tom"><li>Pengumuman</li></a>
    <a href="../admin.jsp?id=ngadu"><li>Layanan Pengaduan</li></a>
    <a href="../admin.jsp?id=keluh"><li>Kotak Keluhan</li></a>
    <a href="../admin.jsp?id=datalog"><li>DataLog</li></a>
    <a href="../logout.jsp"><li>Logout</li></a>
  </ul>
</div>

<div class="col-6">        <%
        if (request.getParameter("par")!=null){
       
        Class.forName("com.mysql.jdbc.Driver");
        Connection kon = DriverManager.getConnection("jdbc:mysql://localhost/biodata", "root", "" );
        String i =request.getParameter("par");
        String query ="select * from status where nik_pengadu='"+i+"'";
        Statement sm=kon.createStatement();
        ResultSet rs = sm.executeQuery(query);
        while(rs.next()){%><%
        out.print("<p>Status Pengaduan Anda di"+rs.getString(3)+" Pada "+rs.getString(4)+"</p>");
        }rs.close();
        kon.close();
}
%>

                 <%
       
    String tam = request.getParameter("tom");
    if(tam !=null){
          Class.forName("com.mysql.jdbc.Driver");
                Connection kon = DriverManager.getConnection("jdbc:mysql://localhost/biodata", "root", "" );
        String id = request.getParameter("tom");
        String query1 ="select * from woro where id='"+id+"'";
        Statement stm=kon.createStatement();
        ResultSet res = stm.executeQuery(query1);
        if(res.next()){%>
        
        <b>Laporan : <%=res.getString(2)%></b><br><b>Pada Tanggal: <%=res.getString(3)%> </b><br/><b>Korban: <%=res.getString(5)%></b>
        <form action="aduan" method="post"><span>
                <br>Keterangan:<br><textarea><%=res.getString(4)%></textarea></span><span>
                    <img id="myImg" src="../pengumuman/img/<%=res.getString(7)%>" alt="gambar" style="width: 100px"></span>
            <br><br>
        </form><br/>
        
         <%
            
        }res.close();
        kon.close();
    }%>
        
</div>

<div class="col-3 right">
  <div class="aside">
    <h2>What?</h2>
    <p>Chania is a city on the island of Crete.</p>
    <h2>Where?</h2>
    <p>Crete is a Greek island in the Mediterranean Sea.</p>
    <h2>How?</h2>
    <p>You can reach Chania airport from all over Europe.</p>
  </div>
</div>

</div>

<div class="footer">
  <p><%@include file='../page/footer.jsp' %></p>
</div>    <!-- Display -->
<div id="mygambar" class="gambar">
  <span class="close">&times;</span>
  <img class="gambar-content" id="img01">
  <div id="caption"></div>
</div>

<script>
// panggil display
var gambar = document.getElementById('mygambar');

// panggil gambar dan masukan kedalam display - menggunakan "alt" untuk caption teks
var img = document.getElementById('myImg');
var gambarImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
    gambar.style.display = "block";
    gambarImg.src = this.src;
    captionText.innerHTML = this.alt;
};

// Panggil element <span> yang merupakan tombol clos dari display
var span = document.getElementsByClassName("close")[0];

// Ketika <span> (x) di klik, display keluar/ ditutup
span.onclick = function() { 
    gambar.style.display = "none";
};
</script>

    </body>
</html>
