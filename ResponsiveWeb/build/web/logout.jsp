<%-- 
    Document   : logout
    Created on : 04-Dec-2016, 10:25:15
    Author     : EDI PRAYITNO
--%>
<%
request.getSession().removeAttribute("name");
request.getSession().invalidate();
response.sendRedirect("index.jsp");
%>
