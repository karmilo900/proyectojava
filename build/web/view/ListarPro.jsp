
<%@page import="java.util.Iterator"%>
<%@page import="Model.Programa"%>
<%@page import="java.util.List"%>
<%@page import="ModelDao.ProgramaDao"%>
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
            <h2>Programas REGISTRADOS EN EL SISTEMA</h2>
            <table class="table table-responsive">
                <thead>
                    <tr>
                        <th class="text-center">codprograma</th>
                        <th class="text-center">nombrepro</th>
                        
                    </tr>
                </thead>
                <%
                    ProgramaDao daop = new ProgramaDao();
                    List<Programa>listar=daop.listadopro();
                    Iterator<Programa>it=listar.iterator();
                    Programa usua= null;
                    while(it.hasNext()){
                    usua=it.next();
                    
                    
                    %>
                    <tbody>
                        <tr>
                            <td class="text-center"><%=usua.getCodprograma()%></td>
                            <td class="text-center"><%=usua.getNombreprograma()%></td>

                            <td class="text-center">
                                <a class="btn btn-danger" href="ControladoPrograma?accion=editar&codprograma=<%=usua.getCodprograma()%>">EDITAR</a>
                                <a class="btn btn-warning" href="ControladoPrograma?accion=eliminar&codprograma=<%=usua.getCodprograma()%>">ELIMINAR</a>

                            </td>
                        </tr>
                        <% } %>
                    </tbody>
            </table>
            
        </div>
    </body>
</html>
