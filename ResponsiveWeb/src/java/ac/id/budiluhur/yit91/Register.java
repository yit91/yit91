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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author EDI PRAYITNO
 */
public class Register extends HttpServlet {

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
            out.println("<title>Servlet CRUD</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CRUD at " + request.getContextPath() + "</h1>");
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
    String[] kolom= new String[4];
    String[] isi= new String[4];
    
    protected String[] Kolom(){
     kolom [0]="nim";  
     kolom [1]="username"; 
     kolom [2]="password";
     kolom [3]="level";
     
     return kolom;
    }
    protected String[] Data(){
     isi[0] = obj.getNim().toString();
     isi[1] = obj.getNama().toString();
     isi[2] = obj.getPassword().toString();
     isi[3] = obj.getLevel().toString();
     return isi;
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        obj.setNim(request.getParameter("nim"));
        obj.setNama(request.getParameter("nama"));
        obj.setPassword(request.getParameter("password"));
        obj.setLevel(request.getParameter("level"));
        if(request.getParameter("cmdsimpan") !=null){
            query.Input(Kolom(), Data(), "login");
         RequestDispatcher rd = request.getRequestDispatcher("index.jsp?id=log");
            rd.forward(request, response);   
        }
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
