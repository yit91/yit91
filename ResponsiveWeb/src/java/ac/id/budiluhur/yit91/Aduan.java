/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.id.budiluhur.yit91;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author EDI PRAYITNO
 */
public class Aduan extends HttpServlet {

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
            out.println("<title>Servlet Aduan</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Aduan at " + request.getContextPath() + "</h1>");
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
    String[] isi = new String[6];
    String[] koloms = new String[3];
    String[] isis = new String[3];
    
    protected String[] Kolom(){
     kolom [0]="nik";  
     kolom [1]="nama"; 
     kolom [2]="alamat";
     kolom [3]="keluhan";
     kolom [4]="privasi";
     kolom [5]="waktu";
     
     return kolom;
    }
    protected String[]Koloms(){
        koloms[0] ="nik_pengadu";
        koloms[1] ="status";
        koloms[2] ="waktu";
        return koloms;
    }
        protected String[]Koloms2(){
        koloms[0] ="no";
        koloms[1] ="status";
        koloms[2] ="waktu";
        return koloms;
    }
            protected String[]Koloms3(){
        koloms[0] ="no";
        koloms[1] ="status";
        koloms[2] ="waktu";
        return koloms;
    }
                protected String[]Koloms1(){
        koloms[0] ="no";
        koloms[1] ="status";
        koloms[2] ="waktu";
        return koloms;
    }
    protected String[] Data(){
     isi[0] = obj.getNik().toString();
     isi[1] = obj.getNama().toString();
     isi[2] = obj.getAlamat().toString();
     isi[3] = obj.getKeluhan().toString();
     isi[4] = obj.getPrivasi().toString();
     isi[5] = obj.getAjam().toString();
     return isi;
    }
    protected String[] Datas(){
        isis[0] = obj.getNik().toString();
        isis[1] = obj.getStatus().toString();
        isis[2] = obj.getAjam().toString();
        return isis;
    }
        protected String[] Datas1(){
        isis[0] = obj.getNik().toString();
        isis[1] = obj.getStatus().toString();
        isis[2] = obj.getAjam().toString();
        return isis;
    }
            protected String[] Datas2(){
        isis[0] = obj.getNik().toString();
        isis[1] = obj.getStatus().toString();
        isis[2] = obj.getAjam().toString();
        return isis;
    }
                protected String[] Datas3(){
        isis[0] = obj.getNik().toString();
        isis[1] = obj.getStatus().toString();
        isis[2] = obj.getAjam().toString();
        return isis;
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        obj.setNik(request.getParameter("nik"));
        obj.setNama(request.getParameter("nama"));
        obj.setAlamat(request.getParameter("alamat"));
        obj.setKeluhan(request.getParameter("keluhan"));
        obj.setPrivasi(request.getParameter("priv"));
        obj.setAjam(request.getParameter("waktu"));
        
        
        if(request.getParameter("cmdkirim") !=null){
            query.Input(Kolom(), Data(), "pengaduan");
            obj.setStatus("Kirim");
            obj.setAjam(new Date().toString());
            query.Input(Koloms(), Datas(), "status");
            
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp?id=ngadu");
            rd.forward(request, response);
        }else if(request.getParameter("cmdtolak")!=null){
            obj.setStatus("Tolak");
            obj.setAjam(new Date().toString());
            query.Edit(Koloms1(), Datas1(), "status", "no",request.getParameter("nik"));
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp?id=keluh");
            rd.forward(request, response);
        }else if(request.getParameter("cmdproses")!=null){
            obj.setStatus("Proses");
            obj.setAjam(new Date().toString());
            query.Edit(Koloms3(), Datas3(), "status", "no",request.getParameter("nik"));
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp?id=keluh");
            rd.forward(request, response);
        }else if(request.getParameter("cmdterima")!=null){
            obj.setStatus("Terima");
            obj.setAjam(new Date().toString());
            query.Edit(Koloms2(), Datas2(), "status", "no",request.getParameter("nik"));
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp?id=keluh");
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
