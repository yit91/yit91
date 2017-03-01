/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.id.budiluhur.yit91;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ac.id.budiluhur.yit91.*;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author EDI PRAYITNO
 */
public class CRUD extends HttpServlet {

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
    String[] kolom= new String[8];
    String[] isi = new String[8];
            
     protected String[] Kolom(){
     kolom [0]="nik";  
     kolom [1]="nama";
     kolom [2]="alamat";
     kolom [3]="pos";
     kolom [4]="mulai";
     kolom [5]="selesai";
     kolom [6]="tgl";
     kolom [7]="hari";
     
     return kolom;
    }
    protected String[] Data(){
     isi[0] = obj.getNik().toString();
     isi[1] = obj.getNama().toString();
     isi[2] = obj.getAlamat().toString();
     isi[3] = obj.getPos().toString();
     isi[4] = obj.getAjam().toString();
     isi[5] = obj.getBjam().toString();
     isi[6] = obj.getTgl().toString();
     isi[7] = obj.getHari().toString();
     return isi;
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        obj.setNik(request.getParameter("nik"));
        obj.setNama(request.getParameter("nama"));
        obj.setAlamat(request.getParameter("alamat"));
        obj.setPos(request.getParameter("pos"));
        obj.setAjam(request.getParameter("mulai"));
        obj.setBjam(request.getParameter("selesai"));
        obj.setTgl(request.getParameter("tgl"));
        obj.setHari(request.getParameter("hari"));
        if(request.getParameter("cmdsimpan") !=null){
            query.Input(Kolom(), Data(), "anggota");
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp?id=pst");
            rd.forward(request, response);
            
        }else if (request.getParameter("cmdcari") !=null){
            String hasilcari = query.Cari("nik", request.getParameter("nik"),"anggota");
            String[] data2 = hasilcari.split(",");
            out.println("isi nama="+data2[1]);
            request.setAttribute("nik", data2[0]);
            request.setAttribute("nama", data2[1]);
            request.setAttribute("alamat", data2[2]);
            request.setAttribute("pos", data2[3]);
            request.setAttribute("mulai",data2[4]);
            request.setAttribute("selesai", data2[5]);
            request.setAttribute("tgl",data2[6]);
            request.setAttribute("hari",data2[7]);
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp?id=tam");
            rd.forward(request, response);
        }else if(request.getParameter("cmdubah")!=null){
           query.Edit(Kolom(), Data(), "anggota", "nik",request.getParameter("nik"));
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp?id=pst");
            rd.forward(request, response);
        }else if(request.getParameter("cmdhapus")!=null){
            query.Hapus("anggota","nik",request.getParameter("nik"));
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp?id=pst");
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
