<%-- 
    Document   : EditarFi
    Created on : 20/05/2023, 1:11:14 a. m.
    Author     : CAMIL
--%>

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
      <h1>Editar prorgrama</h1>
      <%
        FichaDao afi =new FichaDao();  
        int id= Integer.parseInt((String)request.getAttribute(("codficha")));
        Ficha fi = new Ficha();
        fi=afi.list(id);
      %>
      <form action="../ControladoFicha">
          
         <label for="cantidadaprendices">cantaprendices</label>
        <input class="form-control" id="cantidadaprendices" type="number" name="txtCantAp" value="<%=fi.getCantiAprendices()%>">
        <br>
          
        <label for="codficha">codficha</label>
        <input class="form-control" id="codficha" type="number" name="txtCodFicha" value="<%=fi.getCodFicha()%>" >
        <br>
         <label for="codaprendiz">codaprendiz</label>
        <input class="form-control" id="codaprendiz" type="number" name="txtCodPro" value="<%=fi.getCodaprendiz()%>" >
        <br>
         <label for="codficha">codficha</label>
        <input class="form-control" id="codficha" type="number" name="txtCodAp" value="<%=fi.getCodprograma()%>" >
        <br>
        <input class="btn btn-primary" type="submit" name="accion" value="ActualizarFi">
      </form>
    </div>
  </div>
    </body>
</html>


