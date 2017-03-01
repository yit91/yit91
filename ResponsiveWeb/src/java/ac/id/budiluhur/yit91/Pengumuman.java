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
import com.oreilly.servlet.MultipartRequest;

/**
 *
 * @author EDI PRAYITNO
 */
public class Pengumuman extends HttpServlet {

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
            out.println("<title>Servlet Pengumuman</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Pengumuman at " + request.getContextPath() + "</h1>");
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
    String[] kolom= new String[6];
    String[] isi= new String[6];
    
    protected String[] Kolom(){
     kolom [0]="pembunuhan"; 
     kolom [1]="waktu";
     kolom [2]="uraian"; 
     kolom [3]="korban";
     kolom [4]="lokasi";
     kolom [5]="gambar";
     
     return kolom;
    }
    protected String[] Data(){
     isi[0] = obj.getPembunuhan().toString();
     isi[1] = obj.getAjam().toString();
     isi[2] = obj.getUraian().toString();
     isi[3] = obj.getKorban().toString();
     isi[4] = obj.getLokasi().toString();
     isi[5] = obj.getFoto();
     return isi;
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
        MultipartRequest requestt = new MultipartRequest(request,"D:\\UAS_JAVA WEB PROGRAMING_EDI PRAYITNO/poskamling/web/pengumuman/img",10000000); 
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        obj.setPembunuhan(requestt.getParameter("a"));
        obj.setAjam(requestt.getParameter("waktu"));
        obj.setUraian(requestt.getParameter("uraian"));
        obj.setLokasi(requestt.getParameter("lokasi"));
        obj.setKorban(requestt.getParameter("korban"));
        obj.setFoto(requestt.getOriginalFileName("nfile"));
        if(requestt.getParameter("cmdkirim") !=null){
            query.Input(Kolom(), Data(), "woro");
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp?id=tom");
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
