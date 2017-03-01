<%-- 
    Document   : home
    Created on : Feb 5, 2017, 3:28:24 PM
    Author     : root
--%>
<%
if(session.isNew()==false){
if ((session.getAttribute("name") == null)||(session.getAttribute("name")=="")){
response.sendRedirect("index.jsp");    
}}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="style.css" rel="stylesheet" type="text/css">

</head>
<body>

<div class="header">
     <div class="card"><img src="page/img/bl.png" alt="bl" style="width: 80px"><div class="container"><%=session.getAttribute("name")%></div></div>
  <h1>POSKAMLING TERPADU</h1>
</div>

<div class="row">

<div class="col-3 menu">
  <ul>
    <a href="home.jsp"><li>Home</li></a>
    <a href="home.jsp?id=jad"><li>Jadwal</li></a>
    <a href="home.jsp?id=pst"><li>Peserta</li></a>
    <a href="home.jsp?id=tom"><li>Tombol Panik</li></a>
    <a href="home.jsp?id=adu"><li>Pengaduan</li></a>
    <a href="logout.jsp"><li>Logout</li></a>
  </ul>
</div>

<div class="col-6">
        <%
    if(request.getParameter("id")==null){
        
  out.print("<h1>The City</h1>"); 
out.print("<p>Chania is the capital of the Chania region on the island of Crete. The city can be divided in two parts, the old town and the modern city.</p>");%>
  <%
    }else{
        String kd=request.getParameter("id");
        if (kd.equals("jad")){
            %>
            <jsp:include page="jadwal.jsp" flush="true"/>
            <%
        }else if(kd.equals("pst")){
            %>
            <jsp:include page="anggota/biodata.jsp" flush="true"/>
    <%
        }else if(kd.equals("tam")){
            %>
            <jsp:include page="anggota/view.jsp" flush="true"/>
    <%
        }else if(kd.equals("tom")){
            %>
            <jsp:include page="pengumuman/woroworo.jsp" flush="true"/>
    <%
        }else if(kd.equals("adu")){
            %>
            <jsp:include page="pengaduan/pengaduan.jsp" flush="true"/>
    <%
        }else if(request.getParameter("id") == kd){
            %>
            <jsp:include page="pengaduan/tampil.jsp" flush="true"/>
    <%
        } 
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
  <p><%@include file='page/footer.jsp' %></p>
</div>

</body>
</html>
