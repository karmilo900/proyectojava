

<%@page import="Model.Programa"%>
<%@page import="ModelDao.ProgramaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        ProgramaDao apro =new ProgramaDao();  
        int id= Integer.parseInt((String)request.getAttribute(("codprograma")));
        Programa pro = new Programa();
        pro=apro.list(id);
      %>
      <form action="../ControladoPrograma">
          
         <label for="codigoprograma">Codigo Programa</label>
        <input class="form-control" id="codigoprograma" type="number" name="txtcodpro" value="<%=pro.getCodprograma()%>">
        <br>
          
        <label for="nombreprograma">Nombre del Programa</label>
        <input class="form-control" id="nombreprograma" type="text" name="txtnombrepro" value="<%=pro.getNombreprograma()%>" >
        <br>
        <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
      </form>
    </div>
  </div>
    </body>
</html>

