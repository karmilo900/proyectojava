<%-- 
    Document   : EditarA
    Created on : 8/05/2023, 8:42:17 p. m.
    Author     : APRENDIZ
--%>

<%@page import="Model.Aprendiz"%>
<%@page import="ModelDao.AprendizDao"%>
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
      <h1>Editar aprendiz</h1>
      <%
        AprendizDao ape =new AprendizDao();  
        int id= Integer.parseInt((String)request.getAttribute(("id")));
        Aprendiz ap = (Aprendiz)ape.list(id);
        
      %>
      <form action="ControladorAprendiz">
          
         <label for="id">ID</label>
        <input class="form-control" id="id" type="number" name="txtid" value="<%= id%>">
        
          
        <label for="documento">Documento</label>
        <input class="form-control" id="documento" type="number" name="txtDoc" value="<%=ap.getDocuApre()%>" >

        <label for="apellidos">Apellido</label>
        <input class="form-control" id="apellidos" type="text" name="txtApe" value="<%=ap.getApellido()%>">

        <label for="nombre">Nombre</label>
        <input class="form-control" id="nombre" type="text" name="txtNom" value="<%=ap.getNombre()%>">

        <label for="correo">Correo electrónico</label>
        <input class="form-control" id="correo"  type="email" name="txtEmail" value="<%=ap.getCorreo()%>">

        <label for="nContact">Número de contacto</label>
        <input class="form-control" id="nContact" type="number" name="txtTel" value="<%=ap.getTeleApre()%>">

        <br>
        <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
      </form>
    </div>
  </div>
    </body>
</html>
