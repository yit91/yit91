package org.apache.jsp.pengumuman;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;

public final class woroworo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("     /*   label{\n");
      out.write("            border:none; \n");
      out.write("        }\n");
      out.write("        table{\n");
      out.write("            border: 1px solid blue;\n");
      out.write("            padding: 5px 5px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        td{border: none;}\n");
      out.write("        \n");
      out.write("        .z{\n");
      out.write("            border:none;\n");
      out.write("            padding-left: 10%;\n");
      out.write("            padding-right: 10%;\n");
      out.write("        }\n");
      out.write("        .t{\n");
      out.write("            width: 200px;\n");
      out.write("            margin-top: 40px;\n");
      out.write("            margin-bottom:20px;}\n");
      out.write("               textarea{\n");
      out.write("           border-top: none;\n");
      out.write("           border-right: none;\n");
      out.write("           border-left:none;\n");
      out.write("           border-bottom: 0.5px solid blue;\n");
      out.write("            height: 40px;\n");
      out.write("            width: 325px;\n");
      out.write("            margin:auto;\n");
      out.write("        }*/\n");
      out.write("    </style>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"input.css\"/>\n");
      out.write("    <body>  \n");
      out.write("    <center>\n");
      out.write("        <div id=\"log\">\n");
      out.write("        <h1>Woro Woro</h1><hr/>\n");
      out.write("        <form action=\"Pengumuman\" method=\"post\" enctype=\"multipart/form-data\" >\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>Pembunuhan</td>\n");
      out.write("            \n");
      out.write("                <td>: <input type=\"checkbox\" name=\"a\" value=\"Pembunuhan\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Pembunuhan\" name=\"a\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Pembunuhan\" name=\"a\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Perampokan</td>\n");
      out.write("                <td>: <input type=\"checkbox\" value=\"Perampokan\" name=\"a\"/><input type=\"checkbox\" value=\"Perampokan\" name=\"a\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Perampokan\" name=\"a\"/><input type=\"checkbox\" value=\"Perampokan\" name=\"a\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Perampokan\" name=\"a\"/><input type=\"checkbox\" value=\"Perampokan\" name=\"a\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Kebakaran</td>\n");
      out.write("                <td>: <input type=\"checkbox\" value=\"Kebakaran\" name=\"a\"/><input type=\"checkbox\" value=\"Kebakaran\" name=\"a\"/><input type=\"checkbox\" value=\"Kebakaran\" name=\"a\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Kebakaran\" name=\"a\"/><input type=\"checkbox\" value=\"Kebakaran\" name=\"a\"/><input type=\"checkbox\" value=\"Kebakaran\" name=\"a\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Kebakaran\" name=\"a\"/><input type=\"checkbox\" value=\"Kebakaran\" name=\"a\"/><input type=\"checkbox\" value=\"Kebakaran\" name=\"a\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Bencana Alam</td>\n");
      out.write("                <td>: <input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/><input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/><input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/><input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/><input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/><input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/><input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/><input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/><input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/><input type=\"checkbox\" value=\"Bencana Alam\" name=\"a\"/>&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Pencurian Hewan</td>\n");
      out.write("                <td>: <input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/><input type=\"checkbox\" value=\"Pencurian Hewan\" name=\"a\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Uluk Uluk</td>\n");
      out.write("                <td>: <input type=\"checkbox\" value=\"Keadaan Kembali Aman\" name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\" name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/> <input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Keadaan Kembali Aman\" name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\" name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/> <input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" value=\"Keadaan Kembali Aman\" name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\" name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/> <input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/><input type=\"checkbox\" value=\"Keadaan Kembali Aman\"  name=\"a\"/></td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Uraian</td>\n");
      out.write("                <td>&nbsp; <textarea name=\"uraian\"></textarea>\n");
      out.write("                    <input type=\"hidden\" name=\"waktu\" value=\"");
      out.print(new Date());
      out.write("\"/>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Korban</td>\n");
      out.write("                <td>: <input type=\"text\" name=\"korban\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Lokasi</td>\n");
      out.write("                <td>: <input type=\"text\" name=\"lokasi\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Foto</td>\n");
      out.write("                <td>: <input type=\"file\" name=\"nfile\"/></td><hr>\n");
      out.write("            </tr>\n");
      out.write("            <tr><td class=\"z\" colspan=\"2\"><center>\n");
      out.write("                    <input class=\"t\" type=\"submit\" value=\"Kirim\" name=\"cmdkirim\"/>\n");
      out.write("                    <input class=\"t\" type=\"reset\" value=\"Batal\" name=\"\"/></center></td></tr>\n");
      out.write("        </table>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
