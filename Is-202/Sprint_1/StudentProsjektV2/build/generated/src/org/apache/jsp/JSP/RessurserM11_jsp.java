package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class RessurserM11_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <header>\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "HeaderMenu.jsp", out, false);
      out.write("\n");
      out.write("    </header>\n");
      out.write("    <style>\n");
      out.write("                .button {\n");
      out.write("                background-color: lightgray;\n");
      out.write("                color: black; \n");
      out.write("                border: 1px solid black;\n");
      out.write("                float: left;   \n");
      out.write("                cursor: not-allowed; \n");
      out.write("            }\n");
      out.write("    </style>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Modul 11</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Modul 11</h1>\n");
      out.write("        <h2>Abstrakte Klasser og Interface<h2/>\n");
      out.write("        <form action=\"\" method=\"post\">\n");
      out.write("                    <button class=\"button button \"onclick=\"alert('Modul skal godkjennes i samtale')\">Lever Her</button>\n");
      out.write("        </form>\n");
      out.write("                <br>\n");
      out.write("                <h4><a href=\"Moduler\">Oversikt over alle Moduler</a></h4>\n");
      out.write("                <p>Noen ganger vet vi at alle subklasser må ha en bestemt metode,<br> \n");
      out.write("                    men vi har ikke noe fornuftig denne metoden kan gjøre i superklassen. <br>\n");
      out.write("                    Et eksempel på dette er utskriftsmetoden i eksemplene til modul 9 og 10.<br>\n");
      out.write("                    Det er her abstrakte klasser og interface kommer inn. De gjør det mulig å definere abstrakte metoder, <br>\n");
      out.write("                    som bare består av en header. Dvs. at de definerer signaturen til en eller flere metoder, <br>\n");
      out.write("                    men ikke hvordan metoden gjør det den skal gjøre.</p> \n");
      out.write("                <h3>Oppgave:</h3>\n");
      out.write("                <ul><p>Ta i bruk abstrakte klasser og interface i prosjektet ditt.<br>\n");
      out.write("                        Hvis det ikke passer å bruke dette i de prosjektene du har, lager du et nytt..</p></ul>\n");
      out.write("                <h3>Godkjenning:</h3>\n");
      out.write("                <ul><p>Godkjennes av foreleser eller hjelpelærer i intervju</p></ul>\n");
      out.write("                <h3>Læringsmål:</h3>\n");
      out.write("                <ul> \n");
      out.write("                    <p><b>Du har fullført modulen når du kan:</b></p>\n");
      out.write("                    <li>Definere abstrakte metoder og klasser (og interface)</li>\n");
      out.write("                    <li>Definere konkrete subklasser av en abstrakt klasse, og klasser som implementerer et interface</li>\n");
      out.write("                    <li>Kan forklare hvorfor det er mulig for en klasse å arve fra flere interface, men bare fra en klasse</li>\n");
      out.write("                    \n");
      out.write("                </ul>\n");
      out.write("                <h3>Ressurser:</h3>\n");
      out.write("                <ul> \n");
      out.write("                    <li><b>Lærebok:</b></li>\n");
      out.write("                    <li style=\"list-style-type:none;\"><b>Kapitel 10</b></li>\n");
      out.write("                    <li style=\"list-style-type:none;\">David J. Barnes and Michael Kölling</li>\n");
      out.write("                    <li style=\"list-style-type:none;\">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>\n");
      out.write("                    <li style=\"list-style-type:none;\">ISBN: 978-0-13-283554-1</li>\n");
      out.write("                    <br>\n");
      out.write("                    <li><b>Prosjekter:</b></li>\n");
      out.write("                    <li style=\"list-style-type:none;\">Foxes-and-rabbits</li>\n");
      out.write("                    <li style=\"list-style-type:none;\">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href=\"https://www.bluej.org/objects-first/\">HER</a> </li>\n");
      out.write("                    <br>\n");
      out.write("                    <li><b>Video fra forfatterne av læreboka:</b></li>\n");
      out.write("                    <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/F7KtfGELZsM\" frameborder=\"0\" allowfullscreen></iframe>            \n");
      out.write("                    <br>\n");
      out.write("                    <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/u1Ozi0919D0\" frameborder=\"0\" allowfullscreen></iframe>\n");
      out.write("                    <br>\n");
      out.write("                    <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4JqwzFsXfcI\" frameborder=\"0\" allowfullscreen></iframe>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </ul>\n");
      out.write("      \n");
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
