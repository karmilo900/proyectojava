<%-- 
    Document   : EditarFi
    Created on : 20/05/2023, 1:11:14 a. m.
    Author     : CAMIL
--%>

<%@page import="Model.Programa"%>
<%@page import="ModelDao.ProgramaDao"%>
<%@page import="Model.Aprendiz"%>
<%@page import="java.util.List"%>
<%@page import="ModelDao.AprendizDao"%>
<%@page import="Model.Ficha"%>
<%@page import="ModelDao.FichaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <div class="form-control" id="contenedor">
    <div id="datos">
      <h1>Editar ficha</h1>
      <%
        FichaDao apro =new FichaDao();  
        int id= Integer.parseInt((String)request.getAttribute(("codficha")));
        Ficha pro = (Ficha)apro.list(id);
        
      %>
      <form action="ControladorFicha">
          <label for="codficha">codficha</label>
          <input class="form-control" id="codficha" type="number" name="txtCodFicha" value="<%=id%>"readonly="">
        <br>
         <label for="cantidadaprendices">cantaprendices</label>
        <input class="form-control" id="cantidadaprendices" type="number" name="txtCantAp" value="<%=pro.getCantiAprendices()%>">
        <br>
          
        
         <label for="codaprendiz">codaprendiz</label>
         <select name="txtCodAp" id="codap">
                <option value="">Seleccione un Aprendiz</option>
                <%AprendizDao adao = new AprendizDao();
                List<Aprendiz>list = adao.listadoA();
                %>
                <% 
                for(Aprendiz li:list){%>
                <option value="<%=li.getId()%>"><%=li.getId()%>.<%=li.getNombre()%></option>
                <%}%>
            </select>    
        <br>
        <br>
         <label for="codficha">codprograma</label>
          <select name="txtCodPro" id="codpro">
                <option value="">Seleccione un programa</option>
                <%ProgramaDao proe = new ProgramaDao();
                List<Programa>lista = proe.listadopro();
                     
                %>
                <% 
                for(Programa li:lista){%>
                <option value="<%=li.getCodprograma()%>" value="<%=pro.getCodprograma()%>"><%=li.getCodprograma()%>-<%=li.getNombreprograma()%> </option>
                <%}%>
            </select> 
        <br>
        <br>
        <input class="btn btn-primary" type="submit" name="accion" value="ActualizarFi">
      </form>
    </div>
  </div>
    </body>
</html>


