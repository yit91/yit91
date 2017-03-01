/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.id.budiluhur.yit91;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ac.id.budiluhur.yit91.Peserta;
import static java.lang.System.out;

/**
 *
 * @author EDI PRAYITNO
 */
@WebServlet(name = "Validate", urlPatterns = {"/Validate"})
public class Validate extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Validate</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validate at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Peserta obj = new Peserta();
    Koneksi query = new Koneksi();
    String[] kolom= new String[3];
    String[] isi= new String[3];
    
    protected String[] Kolom(){
     kolom [0]="username"; 
     kolom [1]="time";
     kolom [2]="IP"; 
     return kolom;
    }
    protected String[] Data(){
     isi[0] = obj.getNama().toString();
     isi[1] = obj.getAjam().toString();
     isi[2] = obj.getIp().toString();
     return isi;
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        Peserta daf = new Peserta();
        obj.setNama(request.getParameter("uname"));
        obj.setAjam(request.getAttribute("timeReg").toString());
        obj.setIp(request.getAttribute("IPAddress").toString());
        if(request.getParameter("cmdlogin") !=null){
            query.Input(Kolom(), Data(), "datalog");}
        //String n=request.getParameter("uname");  
       // String p=request.getParameter("upass");
       daf.setNama(request.getParameter("uname"));
       daf.setPassword(request.getParameter("upass"));
       daf.setLevel("0");
       String n = daf.getNama();
       String p = daf.getPassword();
       String l = daf.getLevel();
        
        HttpSession session = request.getSession(true);
        if(session!=null)
        session.setAttribute("name", n);
        session.setAttribute("level", l);
        if(Koneksi.validate(n, p)){  
            RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");  
            rd.forward(request,response);  
        }  
        else{  
            out.print("<p style=\"color:red\">Sorry username or password error</p>"); 
           
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp?id=log");  
            rd.include(request,response); 
        }  

        out.close(); 
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
