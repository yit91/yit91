<%-- 
    Document   : admin
    Created on : Feb 5, 2017, 2:58:41 PM
    Author     : root
--%>
<%
if(session.isNew()==false){
 if(session.getAttribute("name").equals("admin")&& session.getAttribute("level").equals("0")){

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
    <a href="admin.jsp"><li>Home</li></a>
    <a href="admin.jsp?id=jad"><li>Jadwal</li></a>
    <a href="admin.jsp?id=pst"><li>Peserta</li></a>
    <a href="admin.jsp?id=tom"><li>Pengumuman</li></a>
    <a href="admin.jsp?id=ngadu"><li>Layanan Pengaduan</li></a>
    <a href="admin.jsp?id=keluh"><li>Kotak Keluhan</li></a>
    <a href="admin.jsp?id=datalog"><li>DataLog</li></a>
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
        }else if(kd.equals("datalog")){
            %>
            <jsp:include page="datalog.jsp" flush="true"/>
    <%
        }else if(kd.equals("out")){
            %>
            <jsp:include page="logout.jsp" flush="true"/>
    <%
        }else if(kd.equals("tam")){
            %>
            <jsp:include page="anggota/view.jsp" flush="true"/>
    <%
        }else if(kd.equals("tom")){
            %>
            <jsp:include page="pengumuman/woro.jsp" flush="true"/>
    <%
        }else if(kd.equals("ngadu")){
            %>
            <jsp:include page="pengaduan/pengaduan.jsp" flush="true"/>
    <%
        }else if(kd.equals("keluh")){
            %>
            <jsp:include page="pengaduan/tampil.jsp" flush="true"/>
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
<%}else{response.sendRedirect("home.jsp");}}else{response.sendRedirect("index.jsp");
    
}%>
