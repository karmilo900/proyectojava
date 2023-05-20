
<%@page import="java.util.*"%>

<%@page import="Model.Aprendiz"%>
<%@page import="ModelDao.AprendizDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <div class="container">
            <h2>APRENDICES REGISTRADOS EN EL SISTEMA</h2>
            <table class="table table-responsive">
                <thead>
                    <tr>
                        <th class="text-center">id</th>
                        <th class="text-center">Docu</th>
                        <th class="text-center">NombreA</th>
                        <th class="text-center">ApellidoA</th>
                        <th class="text-center">EmailA</th>
                        <th class="text-center">TelefonoA</th>
                    </tr>
                </thead>
                <%
                    AprendizDao dao = new AprendizDao();
                    List<Aprendiz>listar=dao.listadoA();
                    Iterator<Aprendiz>it=listar.iterator();
                    Aprendiz usu= null;
                    while(it.hasNext()){
                    usu=it.next();
                    
                    
                    %>
                    <tbody>
                        <tr>
                            <td class="text-center"><%=usu.getId()%></td>
                            <td class="text-center"><%=usu.getDocuApre()%></td>
                            <td class="text-center"><%=usu.getNombre()%></td>
                            <td class="text-center"><%=usu.getApellido()%></td>
                            <td class="text-center"><%=usu.getCorreo()%></td>
                            <td class="text-center"><%=usu.getTeleApre()%></td>
                            <td class="text-center">
                                <a class="btn btn-danger" href="../ControladorAprendiz?accion=editar&id=<%=usu.getId()%>">EDITAR</a>
                                <a class="btn btn-warning" href="../ControladorAprendiz?accion=eliminar&id=<%=usu.getId()%>">ELIMINAR</a>
                                
                            </td>
                        </tr>
                        <% } %>
                    </tbody>
            </table>
            
        </div>
    </body>
</html>
