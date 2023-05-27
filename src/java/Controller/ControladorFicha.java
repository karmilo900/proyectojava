/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Ficha;
import ModelDao.FichaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author APRENDIZ
 */
@WebServlet(name = "ControladorFicha", urlPatterns = {"/ControladorFicha"})
public class ControladorFicha extends HttpServlet {

    String agregarfi="view/Fficha.jsp";
    String listarfi="view/ListarFi.jsp";
    String editarfi="view/EditarFi.jsp";
    Ficha f =new Ficha();
    FichaDao fdao=new FichaDao();
    int codficha;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorFicha</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorFicha at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listarfi")){
            acceso=listarfi;
        }else if(action.equalsIgnoreCase("agregarfi")){
            acceso=agregarfi;
        }if(action.equalsIgnoreCase("Agregarfi")){
            int codf=Integer.parseInt(request.getParameter("txtCodFicha"));
            int cantap=Integer.parseInt(request.getParameter("txtCantAp"));
            int Nomprog=Integer.parseInt(request.getParameter("txtCodPro"));
            int nomApre=Integer.parseInt(request.getParameter("txtCodAp"));
            f.setCodFicha(codf);
            f.setCantiAprendices(cantap);
            f.setCodprograma(Nomprog);
            f.setCodaprendiz(nomApre);
            fdao.registroficha(f);
            acceso=listarfi;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            codficha=Integer.parseInt(request.getParameter("codficha"));
            f.setCodprograma(codficha);
            fdao.eliminarficha(codficha);
            acceso=listarfi;
        }
        else if(action.equalsIgnoreCase("editar")){
        request.setAttribute("codficha",request.getParameter("codficha"));
        acceso=editarfi;
        }
        else if(action.equalsIgnoreCase("ActualizarFi")){
            codficha=Integer.parseInt(request.getParameter("txtCodFicha"));
            int cantiap = Integer.parseInt(request.getParameter("txtCantAp"));
            int codprog = Integer.parseInt(request.getParameter("txtCodPro"));
            int codapre = Integer.parseInt(request.getParameter("txtCodAp"));
            f.setCodFicha(codficha);
            f.setCantiAprendices(cantiap);
            f.setCodprograma(codprog);
            f.setCodaprendiz(codapre);
            fdao.actualizarficha(f);
            acceso=listarfi;
        }
        RequestDispatcher view=request.getRequestDispatcher(acceso);
            view.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
