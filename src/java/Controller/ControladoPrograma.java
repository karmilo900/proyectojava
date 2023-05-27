
package Controller;

import Model.Programa;
import ModelDao.ProgramaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author APRENDIZ
 */
@WebServlet(name = "ControladoPrograma", urlPatterns = {"/ControladoPrograma"})
public class ControladoPrograma extends HttpServlet {

   String agregarpro="view/FPrograma.jsp";
   String listarpro="view/ListarPro.jsp";
   String editarpro="view/EditarPro.jsp";
   Programa p =new Programa();
   ProgramaDao pdao=new ProgramaDao();
   int codprogramas;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladoPrograma</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladoPrograma at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listarpro")){
            acceso=listarpro;
        }else if(action.equalsIgnoreCase("agregarpro")){
            acceso=agregarpro;
        }if(action.equalsIgnoreCase("AgregarPro")){
            int codp=Integer.parseInt(request.getParameter("txtcodpro"));
            String nompro=request.getParameter("txtnombrepro");
            p.setCodprograma(codp);
            p.setNombreprograma(nompro);
            pdao.Registrarpro(p);
            acceso=listarpro;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            codprogramas=Integer.parseInt(request.getParameter("codprograma"));
            p.setCodprograma(codprogramas);
            pdao.eliminarpro(codprogramas);
            acceso=listarpro;
            
    }else if(action.equalsIgnoreCase("editar")){
        request.setAttribute("codprograma",request.getParameter("codprograma"));
        acceso=editarpro;
        
    }else if(action.equalsIgnoreCase("Actualizar")){
            codprogramas=Integer.parseInt(request.getParameter("txtcodpro"));
            String nombre = request.getParameter("txtnombrepro");
            p.setCodprograma(codprogramas);
            p.setNombreprograma(nombre);
            pdao.actualizarpro(p);
            acceso=listarpro;
        }
          RequestDispatcher view=request.getRequestDispatcher(acceso);
            view.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
